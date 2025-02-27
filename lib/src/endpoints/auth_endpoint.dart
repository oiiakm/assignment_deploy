import 'package:assignment_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart' as auth;
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

class AuthEndpoint extends Endpoint {
  Future<AuthenticationResponse> loginOrSignup(
    Session session,
    String username,
    String password,
    bool isReferral,
  ) async {
    try {
      auth.UserInfo? userInfo = await auth.Users.findUserByIdentifier(session, username);

      if (userInfo == null) {
        userInfo = auth.UserInfo(
          userIdentifier: username,
          userName: username,
          email: null,
          blocked: false,
          created: DateTime.now().toUtc(),
          scopeNames: [],
        );
        userInfo = await auth.Users.createUser(session, userInfo, 'username');

        final String hashedPassword = await hashPassword(password);

        await UserCredentials.db.insert(
          session,
          [
            UserCredentials(
              userId: userInfo!.id!,
              passwordHash: hashedPassword,
            )
          ],
        );

        if (isReferral) {
          await AppUser.db.insert(
            session,
            [
              AppUser(
                userInfoId: userInfo.id!,
                isReferral: true,
              )
            ],
          );
        }
      } else {
        final int uid = userInfo.id!;
        final creds = await UserCredentials.db.findFirstRow(
          session,
          where: (t) => t.userId.equals(uid),
        );
        if (creds == null) {
          return AuthenticationResponse(
            success: false,
            failReason: AuthenticationFailReason.invalidCredentials,
          );
        }
        if (!await verifyPassword(password, creds.passwordHash)) {
          return AuthenticationResponse(
            success: false,
            failReason: AuthenticationFailReason.invalidCredentials,
          );
        }
      }

      final authToken = await UserAuthentication.signInUser(
        session,
        userInfo.id!,
        'myAuth',
        scopes: {},
      );

      return AuthenticationResponse(
        success: true,
        keyId: authToken.id,
        key: authToken.key,
        userInfo: userInfo,
        failReason: null,
      );
    } catch (e) {
      return AuthenticationResponse(
        success: false,
        failReason: AuthenticationFailReason.internalError,
      );
    }
  }

  Future<String> hashPassword(String password) async {
    return password.split('').reversed.join();
  }

  Future<bool> verifyPassword(String password, String storedHash) async {
    return storedHash == password.split('').reversed.join();
  }
}
