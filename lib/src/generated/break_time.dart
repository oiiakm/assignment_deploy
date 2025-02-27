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

abstract class BreakTime implements _i1.TableRow, _i1.ProtocolSerialization {
  BreakTime._({
    this.id,
    required this.userId,
    required this.startTime,
    required this.endTime,
    required this.isCompleted,
  });

  factory BreakTime({
    int? id,
    required int userId,
    required DateTime startTime,
    required DateTime endTime,
    required bool isCompleted,
  }) = _BreakTimeImpl;

  factory BreakTime.fromJson(Map<String, dynamic> jsonSerialization) {
    return BreakTime(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      startTime:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startTime']),
      endTime: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endTime']),
      isCompleted: jsonSerialization['isCompleted'] as bool,
    );
  }

  static final t = BreakTimeTable();

  static const db = BreakTimeRepository._();

  @override
  int? id;

  int userId;

  DateTime startTime;

  DateTime endTime;

  bool isCompleted;

  @override
  _i1.Table get table => t;

  BreakTime copyWith({
    int? id,
    int? userId,
    DateTime? startTime,
    DateTime? endTime,
    bool? isCompleted,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'startTime': startTime.toJson(),
      'endTime': endTime.toJson(),
      'isCompleted': isCompleted,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'startTime': startTime.toJson(),
      'endTime': endTime.toJson(),
      'isCompleted': isCompleted,
    };
  }

  static BreakTimeInclude include() {
    return BreakTimeInclude._();
  }

  static BreakTimeIncludeList includeList({
    _i1.WhereExpressionBuilder<BreakTimeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BreakTimeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BreakTimeTable>? orderByList,
    BreakTimeInclude? include,
  }) {
    return BreakTimeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BreakTime.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BreakTime.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BreakTimeImpl extends BreakTime {
  _BreakTimeImpl({
    int? id,
    required int userId,
    required DateTime startTime,
    required DateTime endTime,
    required bool isCompleted,
  }) : super._(
          id: id,
          userId: userId,
          startTime: startTime,
          endTime: endTime,
          isCompleted: isCompleted,
        );

  @override
  BreakTime copyWith({
    Object? id = _Undefined,
    int? userId,
    DateTime? startTime,
    DateTime? endTime,
    bool? isCompleted,
  }) {
    return BreakTime(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

class BreakTimeTable extends _i1.Table {
  BreakTimeTable({super.tableRelation}) : super(tableName: 'break_time') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    startTime = _i1.ColumnDateTime(
      'startTime',
      this,
    );
    endTime = _i1.ColumnDateTime(
      'endTime',
      this,
    );
    isCompleted = _i1.ColumnBool(
      'isCompleted',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnDateTime startTime;

  late final _i1.ColumnDateTime endTime;

  late final _i1.ColumnBool isCompleted;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        startTime,
        endTime,
        isCompleted,
      ];
}

class BreakTimeInclude extends _i1.IncludeObject {
  BreakTimeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => BreakTime.t;
}

class BreakTimeIncludeList extends _i1.IncludeList {
  BreakTimeIncludeList._({
    _i1.WhereExpressionBuilder<BreakTimeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BreakTime.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BreakTime.t;
}

class BreakTimeRepository {
  const BreakTimeRepository._();

  Future<List<BreakTime>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BreakTimeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BreakTimeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BreakTimeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<BreakTime>(
      where: where?.call(BreakTime.t),
      orderBy: orderBy?.call(BreakTime.t),
      orderByList: orderByList?.call(BreakTime.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<BreakTime?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BreakTimeTable>? where,
    int? offset,
    _i1.OrderByBuilder<BreakTimeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BreakTimeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<BreakTime>(
      where: where?.call(BreakTime.t),
      orderBy: orderBy?.call(BreakTime.t),
      orderByList: orderByList?.call(BreakTime.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<BreakTime?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<BreakTime>(
      id,
      transaction: transaction,
    );
  }

  Future<List<BreakTime>> insert(
    _i1.Session session,
    List<BreakTime> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<BreakTime>(
      rows,
      transaction: transaction,
    );
  }

  Future<BreakTime> insertRow(
    _i1.Session session,
    BreakTime row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<BreakTime>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BreakTime>> update(
    _i1.Session session,
    List<BreakTime> rows, {
    _i1.ColumnSelections<BreakTimeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<BreakTime>(
      rows,
      columns: columns?.call(BreakTime.t),
      transaction: transaction,
    );
  }

  Future<BreakTime> updateRow(
    _i1.Session session,
    BreakTime row, {
    _i1.ColumnSelections<BreakTimeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<BreakTime>(
      row,
      columns: columns?.call(BreakTime.t),
      transaction: transaction,
    );
  }

  Future<List<BreakTime>> delete(
    _i1.Session session,
    List<BreakTime> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BreakTime>(
      rows,
      transaction: transaction,
    );
  }

  Future<BreakTime> deleteRow(
    _i1.Session session,
    BreakTime row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<BreakTime>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BreakTime>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BreakTimeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<BreakTime>(
      where: where(BreakTime.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BreakTimeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BreakTime>(
      where: where?.call(BreakTime.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
