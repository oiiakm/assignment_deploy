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

abstract class Questionnaire
    implements _i1.TableRow, _i1.ProtocolSerialization {
  Questionnaire._({
    this.id,
    required this.userId,
    this.hasSmartphone,
    this.usedGoogleMaps,
    this.canBuySmartphone,
    required this.day,
    required this.month,
    required this.year,
    required this.isCompleted,
    this.tasks,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Questionnaire({
    int? id,
    required int userId,
    bool? hasSmartphone,
    bool? usedGoogleMaps,
    bool? canBuySmartphone,
    required String day,
    required String month,
    required String year,
    required bool isCompleted,
    Map<String, bool>? tasks,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _QuestionnaireImpl;

  factory Questionnaire.fromJson(Map<String, dynamic> jsonSerialization) {
    return Questionnaire(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      hasSmartphone: jsonSerialization['hasSmartphone'] as bool?,
      usedGoogleMaps: jsonSerialization['usedGoogleMaps'] as bool?,
      canBuySmartphone: jsonSerialization['canBuySmartphone'] as bool?,
      day: jsonSerialization['day'] as String,
      month: jsonSerialization['month'] as String,
      year: jsonSerialization['year'] as String,
      isCompleted: jsonSerialization['isCompleted'] as bool,
      tasks: (jsonSerialization['tasks'] as Map?)?.map((k, v) => MapEntry(
            k as String,
            v as bool,
          )),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = QuestionnaireTable();

  static const db = QuestionnaireRepository._();

  @override
  int? id;

  int userId;

  bool? hasSmartphone;

  bool? usedGoogleMaps;

  bool? canBuySmartphone;

  String day;

  String month;

  String year;

  bool isCompleted;

  Map<String, bool>? tasks;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  Questionnaire copyWith({
    int? id,
    int? userId,
    bool? hasSmartphone,
    bool? usedGoogleMaps,
    bool? canBuySmartphone,
    String? day,
    String? month,
    String? year,
    bool? isCompleted,
    Map<String, bool>? tasks,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (hasSmartphone != null) 'hasSmartphone': hasSmartphone,
      if (usedGoogleMaps != null) 'usedGoogleMaps': usedGoogleMaps,
      if (canBuySmartphone != null) 'canBuySmartphone': canBuySmartphone,
      'day': day,
      'month': month,
      'year': year,
      'isCompleted': isCompleted,
      if (tasks != null) 'tasks': tasks?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (hasSmartphone != null) 'hasSmartphone': hasSmartphone,
      if (usedGoogleMaps != null) 'usedGoogleMaps': usedGoogleMaps,
      if (canBuySmartphone != null) 'canBuySmartphone': canBuySmartphone,
      'day': day,
      'month': month,
      'year': year,
      'isCompleted': isCompleted,
      if (tasks != null) 'tasks': tasks?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static QuestionnaireInclude include() {
    return QuestionnaireInclude._();
  }

  static QuestionnaireIncludeList includeList({
    _i1.WhereExpressionBuilder<QuestionnaireTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<QuestionnaireTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QuestionnaireTable>? orderByList,
    QuestionnaireInclude? include,
  }) {
    return QuestionnaireIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Questionnaire.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Questionnaire.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _QuestionnaireImpl extends Questionnaire {
  _QuestionnaireImpl({
    int? id,
    required int userId,
    bool? hasSmartphone,
    bool? usedGoogleMaps,
    bool? canBuySmartphone,
    required String day,
    required String month,
    required String year,
    required bool isCompleted,
    Map<String, bool>? tasks,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          hasSmartphone: hasSmartphone,
          usedGoogleMaps: usedGoogleMaps,
          canBuySmartphone: canBuySmartphone,
          day: day,
          month: month,
          year: year,
          isCompleted: isCompleted,
          tasks: tasks,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  Questionnaire copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? hasSmartphone = _Undefined,
    Object? usedGoogleMaps = _Undefined,
    Object? canBuySmartphone = _Undefined,
    String? day,
    String? month,
    String? year,
    bool? isCompleted,
    Object? tasks = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Questionnaire(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      hasSmartphone:
          hasSmartphone is bool? ? hasSmartphone : this.hasSmartphone,
      usedGoogleMaps:
          usedGoogleMaps is bool? ? usedGoogleMaps : this.usedGoogleMaps,
      canBuySmartphone:
          canBuySmartphone is bool? ? canBuySmartphone : this.canBuySmartphone,
      day: day ?? this.day,
      month: month ?? this.month,
      year: year ?? this.year,
      isCompleted: isCompleted ?? this.isCompleted,
      tasks: tasks is Map<String, bool>?
          ? tasks
          : this.tasks?.map((
                key0,
                value0,
              ) =>
                  MapEntry(
                    key0,
                    value0,
                  )),
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class QuestionnaireTable extends _i1.Table {
  QuestionnaireTable({super.tableRelation})
      : super(tableName: 'questionnaire') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    hasSmartphone = _i1.ColumnBool(
      'hasSmartphone',
      this,
    );
    usedGoogleMaps = _i1.ColumnBool(
      'usedGoogleMaps',
      this,
    );
    canBuySmartphone = _i1.ColumnBool(
      'canBuySmartphone',
      this,
    );
    day = _i1.ColumnString(
      'day',
      this,
    );
    month = _i1.ColumnString(
      'month',
      this,
    );
    year = _i1.ColumnString(
      'year',
      this,
    );
    isCompleted = _i1.ColumnBool(
      'isCompleted',
      this,
    );
    tasks = _i1.ColumnSerializable(
      'tasks',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnBool hasSmartphone;

  late final _i1.ColumnBool usedGoogleMaps;

  late final _i1.ColumnBool canBuySmartphone;

  late final _i1.ColumnString day;

  late final _i1.ColumnString month;

  late final _i1.ColumnString year;

  late final _i1.ColumnBool isCompleted;

  late final _i1.ColumnSerializable tasks;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        hasSmartphone,
        usedGoogleMaps,
        canBuySmartphone,
        day,
        month,
        year,
        isCompleted,
        tasks,
        createdAt,
        updatedAt,
      ];
}

class QuestionnaireInclude extends _i1.IncludeObject {
  QuestionnaireInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Questionnaire.t;
}

class QuestionnaireIncludeList extends _i1.IncludeList {
  QuestionnaireIncludeList._({
    _i1.WhereExpressionBuilder<QuestionnaireTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Questionnaire.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Questionnaire.t;
}

class QuestionnaireRepository {
  const QuestionnaireRepository._();

  Future<List<Questionnaire>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QuestionnaireTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<QuestionnaireTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QuestionnaireTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Questionnaire>(
      where: where?.call(Questionnaire.t),
      orderBy: orderBy?.call(Questionnaire.t),
      orderByList: orderByList?.call(Questionnaire.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Questionnaire?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QuestionnaireTable>? where,
    int? offset,
    _i1.OrderByBuilder<QuestionnaireTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QuestionnaireTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Questionnaire>(
      where: where?.call(Questionnaire.t),
      orderBy: orderBy?.call(Questionnaire.t),
      orderByList: orderByList?.call(Questionnaire.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Questionnaire?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Questionnaire>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Questionnaire>> insert(
    _i1.Session session,
    List<Questionnaire> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Questionnaire>(
      rows,
      transaction: transaction,
    );
  }

  Future<Questionnaire> insertRow(
    _i1.Session session,
    Questionnaire row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Questionnaire>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Questionnaire>> update(
    _i1.Session session,
    List<Questionnaire> rows, {
    _i1.ColumnSelections<QuestionnaireTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Questionnaire>(
      rows,
      columns: columns?.call(Questionnaire.t),
      transaction: transaction,
    );
  }

  Future<Questionnaire> updateRow(
    _i1.Session session,
    Questionnaire row, {
    _i1.ColumnSelections<QuestionnaireTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Questionnaire>(
      row,
      columns: columns?.call(Questionnaire.t),
      transaction: transaction,
    );
  }

  Future<List<Questionnaire>> delete(
    _i1.Session session,
    List<Questionnaire> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Questionnaire>(
      rows,
      transaction: transaction,
    );
  }

  Future<Questionnaire> deleteRow(
    _i1.Session session,
    Questionnaire row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Questionnaire>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Questionnaire>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<QuestionnaireTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Questionnaire>(
      where: where(Questionnaire.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QuestionnaireTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Questionnaire>(
      where: where?.call(Questionnaire.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
