import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class QuestionnaireEndpoint extends Endpoint {
  Future<String> saveQuestionnaire(
    Session session, {
    required int userId,
    bool? hasSmartphone,
    bool? usedGoogleMaps,
    bool? canBuySmartphone,
    required String day,
    required String month,
    required String year,
    required bool isCompleted,
    Map<String, bool>? tasks,
  }) async {
    var questionnaire = Questionnaire(
      userId: userId,
      hasSmartphone: hasSmartphone,
      usedGoogleMaps: usedGoogleMaps,
      canBuySmartphone: canBuySmartphone,
      day: day,
      month: month,
      year: year,
      isCompleted: isCompleted,
      tasks: tasks ?? {},
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    final responses = await Questionnaire.db.find(
      session,
      where: (q) => q.userId.equals(userId),
      limit: 1,
    );

    if (responses.isNotEmpty) {
      var existingResponse = responses.first;
      _updateResponseFields(existingResponse, questionnaire);
      await Questionnaire.db.update(session, [existingResponse]);
      return 'Updated successfully.';
    } else {
      questionnaire.createdAt = DateTime.now();
      questionnaire.updatedAt = DateTime.now();
      await Questionnaire.db.insertRow(session, questionnaire);
      return 'Inserted successfully.';
    }
  }

  Future<Questionnaire> getQuestionnaire(Session session, int userId) async {
    final responses = await Questionnaire.db.find(
      session,
      where: (q) => q.userId.equals(userId),
      orderBy: (t) => t.createdAt,
      orderDescending: true,
      limit: 1,
    );

    if (responses.isEmpty) {
      final dummyQuestionnaire = Questionnaire(
        userId: userId,
        hasSmartphone: null,
        usedGoogleMaps: null,
        canBuySmartphone: null,
        day: '',
        month: '',
        year: '',
        isCompleted: false,
        tasks: {
          'Cutting vegetables': false,
          'Sweeping': false,
          'Mopping': false,
          'Cleaning bathrooms': false,
          'Laundary': false,
          'Washing dishes': false,
          'None of the above': false,
        },
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
      return await Questionnaire.db.insertRow(session, dummyQuestionnaire);
    } else {
      return responses.first;
    }
  }

  Future<String> autoSaveQuestionnaire(Session session, Questionnaire updatedResponse) async {
    var existingResponse = await Questionnaire.db.findById(session, updatedResponse.id!);
    if (existingResponse == null) {
      throw Exception("No questionnaire found to update.");
    }
    _updateResponseFields(existingResponse, updatedResponse);
    await Questionnaire.db.update(session, [existingResponse]);
    return 'Auto-saved successfully.';
  }

  void _updateResponseFields(Questionnaire target, Questionnaire source) {
    target
      ..hasSmartphone = source.hasSmartphone
      ..usedGoogleMaps = source.usedGoogleMaps
      ..canBuySmartphone = source.canBuySmartphone
      ..day = source.day
      ..month = source.month
      ..year = source.year
      ..isCompleted = source.isCompleted
      ..updatedAt = DateTime.now();
    target.tasks = source.tasks;
  }
}
