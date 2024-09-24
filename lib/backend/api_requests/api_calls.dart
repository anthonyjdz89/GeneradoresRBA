import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendNotificationCall {
  static Future<ApiCallResponse> call({
    String? mensaje = 'mensaje',
    String? titulo = 'titulo',
  }) async {
    final ffApiRequestBody = '''
{
  "app_id": "47853038-f146-4923-af53-e846ebe931e2",
  "included_segments": [
    "Users"
  ],
  "contents": {
    "en": "${mensaje}"
  },
  "headings": {
    "en": "${titulo}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendNotification',
      apiUrl: 'https://api.onesignal.com/notifications',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Basic M2M3NzZmMjYtOTliNS00NDc0LTg3OWQtMzdkZWE4OWM4NjZl',
        'accept': 'application/json',
        'content-type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class ObtenerResumenGeneralCall {
  static Future<ApiCallResponse> call({
    String? tabla = '/resumenGeneral',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Obtener Resumen General',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/1bG6wf52n6pvRJSH0ALrRDivECsVL3pfnj2vVvhYEAns/values/a6:m52',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyBr2CW5duusqVjpI95OibTLevFgsIGUGSw",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? resumengeneral(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.range''',
      ));
  static String? rows(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.majorDimension''',
      ));
  static List? values(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class ObtenerGastoMantenimientoCall {
  static Future<ApiCallResponse> call({
    String? tabla = '/resumenGeneral',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ObtenerGastoMantenimiento',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/1bG6wf52n6pvRJSH0ALrRDivECsVL3pfnj2vVvhYEAns/values/GastosMantenimiento!A6:E190',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyBr2CW5duusqVjpI95OibTLevFgsIGUGSw",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? resumengeneral(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.range''',
      ));
  static String? rows(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.majorDimension''',
      ));
  static List? values(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
