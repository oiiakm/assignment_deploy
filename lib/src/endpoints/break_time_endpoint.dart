import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class BreakTimeEndpoint extends Endpoint {
  Future<BreakTime?> getBreakTime(Session session, int userId) async {
  try {
    final breakTime = await BreakTime.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId),
      orderBy: (t) => t.startTime,
      orderDescending: true,
    );
    if (breakTime != null) {
      return breakTime;
    } else {
      final now = DateTime.now();
      final dummyBreakTime = BreakTime(
        userId: userId,
        startTime: now,
        endTime: now.add(Duration(minutes: 10)),
        isCompleted: false,
      );
      final insertedDummy = await BreakTime.db.insertRow(session, dummyBreakTime);
      return insertedDummy;
    }
  } catch (e) {
    return null;
  }
}

  Future<bool> markBreakAsCompleted(Session session, int userId) async {
    try {
      final breakTime = await getBreakTime(session, userId);
      if (breakTime == null) {
        return false;
      }
      breakTime.isCompleted = true;
      await BreakTime.db.updateRow(session, breakTime);
      return true;
    } catch (e) {
      return false;
    }
  }
}
