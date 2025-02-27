/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class UserCredentials
    implements _i1.TableRow, _i1.ProtocolSerialization {
  UserCredentials._({
    this.id,
    required this.userId,
    required this.passwordHash,
  });

  factory UserCredentials({
    int? id,
    required int userId,
    required String passwordHash,
  }) = _UserCredentialsImpl;

  factory UserCredentials.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserCredentials(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      passwordHash: jsonSerialization['passwordHash'] as String,
    );
  }

  static final t = UserCredentialsTable();

  static const db = UserCredentialsRepository._();

  @override
  int? id;

  int userId;

  String passwordHash;

  @override
  _i1.Table get table => t;

  UserCredentials copyWith({
    int? id,
    int? userId,
    String? passwordHash,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'passwordHash': passwordHash,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'passwordHash': passwordHash,
    };
  }

  static UserCredentialsInclude include() {
    return UserCredentialsInclude._();
  }

  static UserCredentialsIncludeList includeList({
    _i1.WhereExpressionBuilder<UserCredentialsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserCredentialsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserCredentialsTable>? orderByList,
    UserCredentialsInclude? include,
  }) {
    return UserCredentialsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserCredentials.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserCredentials.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserCredentialsImpl extends UserCredentials {
  _UserCredentialsImpl({
    int? id,
    required int userId,
    required String passwordHash,
  }) : super._(
          id: id,
          userId: userId,
          passwordHash: passwordHash,
        );

  @override
  UserCredentials copyWith({
    Object? id = _Undefined,
    int? userId,
    String? passwordHash,
  }) {
    return UserCredentials(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      passwordHash: passwordHash ?? this.passwordHash,
    );
  }
}

class UserCredentialsTable extends _i1.Table {
  UserCredentialsTable({super.tableRelation})
      : super(tableName: 'user_credentials') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    passwordHash = _i1.ColumnString(
      'passwordHash',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString passwordHash;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        passwordHash,
      ];
}

class UserCredentialsInclude extends _i1.IncludeObject {
  UserCredentialsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => UserCredentials.t;
}

class UserCredentialsIncludeList extends _i1.IncludeList {
  UserCredentialsIncludeList._({
    _i1.WhereExpressionBuilder<UserCredentialsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserCredentials.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UserCredentials.t;
}

class UserCredentialsRepository {
  const UserCredentialsRepository._();

  Future<List<UserCredentials>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserCredentialsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserCredentialsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserCredentialsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<UserCredentials>(
      where: where?.call(UserCredentials.t),
      orderBy: orderBy?.call(UserCredentials.t),
      orderByList: orderByList?.call(UserCredentials.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<UserCredentials?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserCredentialsTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserCredentialsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserCredentialsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<UserCredentials>(
      where: where?.call(UserCredentials.t),
      orderBy: orderBy?.call(UserCredentials.t),
      orderByList: orderByList?.call(UserCredentials.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<UserCredentials?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<UserCredentials>(
      id,
      transaction: transaction,
    );
  }

  Future<List<UserCredentials>> insert(
    _i1.Session session,
    List<UserCredentials> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<UserCredentials>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserCredentials> insertRow(
    _i1.Session session,
    UserCredentials row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserCredentials>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserCredentials>> update(
    _i1.Session session,
    List<UserCredentials> rows, {
    _i1.ColumnSelections<UserCredentialsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UserCredentials>(
      rows,
      columns: columns?.call(UserCredentials.t),
      transaction: transaction,
    );
  }

  Future<UserCredentials> updateRow(
    _i1.Session session,
    UserCredentials row, {
    _i1.ColumnSelections<UserCredentialsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserCredentials>(
      row,
      columns: columns?.call(UserCredentials.t),
      transaction: transaction,
    );
  }

  Future<List<UserCredentials>> delete(
    _i1.Session session,
    List<UserCredentials> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserCredentials>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserCredentials> deleteRow(
    _i1.Session session,
    UserCredentials row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserCredentials>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserCredentials>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserCredentialsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserCredentials>(
      where: where(UserCredentials.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserCredentialsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserCredentials>(
      where: where?.call(UserCredentials.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
