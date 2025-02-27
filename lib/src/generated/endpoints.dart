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
import '../endpoints/auth_endpoint.dart' as _i2;
import '../endpoints/break_time_endpoint.dart' as _i3;
import '../endpoints/questionnaire_endpoint.dart' as _i4;
import 'package:assignment_server/src/generated/questionnaire.dart' as _i5;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'auth': _i2.AuthEndpoint()
        ..initialize(
          server,
          'auth',
          null,
        ),
      'breakTime': _i3.BreakTimeEndpoint()
        ..initialize(
          server,
          'breakTime',
          null,
        ),
      'questionnaire': _i4.QuestionnaireEndpoint()
        ..initialize(
          server,
          'questionnaire',
          null,
        ),
    };
    connectors['auth'] = _i1.EndpointConnector(
      name: 'auth',
      endpoint: endpoints['auth']!,
      methodConnectors: {
        'loginOrSignup': _i1.MethodConnector(
          name: 'loginOrSignup',
          params: {
            'username': _i1.ParameterDescription(
              name: 'username',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'isReferral': _i1.ParameterDescription(
              name: 'isReferral',
              type: _i1.getType<bool>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['auth'] as _i2.AuthEndpoint).loginOrSignup(
            session,
            params['username'],
            params['password'],
            params['isReferral'],
          ),
        )
      },
    );
    connectors['breakTime'] = _i1.EndpointConnector(
      name: 'breakTime',
      endpoint: endpoints['breakTime']!,
      methodConnectors: {
        'getBreakTime': _i1.MethodConnector(
          name: 'getBreakTime',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['breakTime'] as _i3.BreakTimeEndpoint).getBreakTime(
            session,
            params['userId'],
          ),
        ),
        'markBreakAsCompleted': _i1.MethodConnector(
          name: 'markBreakAsCompleted',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['breakTime'] as _i3.BreakTimeEndpoint)
                  .markBreakAsCompleted(
            session,
            params['userId'],
          ),
        ),
      },
    );
    connectors['questionnaire'] = _i1.EndpointConnector(
      name: 'questionnaire',
      endpoint: endpoints['questionnaire']!,
      methodConnectors: {
        'saveQuestionnaire': _i1.MethodConnector(
          name: 'saveQuestionnaire',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'hasSmartphone': _i1.ParameterDescription(
              name: 'hasSmartphone',
              type: _i1.getType<bool?>(),
              nullable: true,
            ),
            'usedGoogleMaps': _i1.ParameterDescription(
              name: 'usedGoogleMaps',
              type: _i1.getType<bool?>(),
              nullable: true,
            ),
            'canBuySmartphone': _i1.ParameterDescription(
              name: 'canBuySmartphone',
              type: _i1.getType<bool?>(),
              nullable: true,
            ),
            'day': _i1.ParameterDescription(
              name: 'day',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'month': _i1.ParameterDescription(
              name: 'month',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'year': _i1.ParameterDescription(
              name: 'year',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'isCompleted': _i1.ParameterDescription(
              name: 'isCompleted',
              type: _i1.getType<bool>(),
              nullable: false,
            ),
            'tasks': _i1.ParameterDescription(
              name: 'tasks',
              type: _i1.getType<Map<String, bool>?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['questionnaire'] as _i4.QuestionnaireEndpoint)
                  .saveQuestionnaire(
            session,
            userId: params['userId'],
            hasSmartphone: params['hasSmartphone'],
            usedGoogleMaps: params['usedGoogleMaps'],
            canBuySmartphone: params['canBuySmartphone'],
            day: params['day'],
            month: params['month'],
            year: params['year'],
            isCompleted: params['isCompleted'],
            tasks: params['tasks'],
          ),
        ),
        'getQuestionnaire': _i1.MethodConnector(
          name: 'getQuestionnaire',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['questionnaire'] as _i4.QuestionnaireEndpoint)
                  .getQuestionnaire(
            session,
            params['userId'],
          ),
        ),
        'autoSaveQuestionnaire': _i1.MethodConnector(
          name: 'autoSaveQuestionnaire',
          params: {
            'updatedResponse': _i1.ParameterDescription(
              name: 'updatedResponse',
              type: _i1.getType<_i5.Questionnaire>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['questionnaire'] as _i4.QuestionnaireEndpoint)
                  .autoSaveQuestionnaire(
            session,
            params['updatedResponse'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i6.Endpoints()..initializeEndpoints(server);
  }
}
