import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ADDRESS Group Code

class AddressGroup {
  static String baseUrl = 'https://psgc.gitlab.io/api';
  static Map<String, String> headers = {};
  static GetProvincesCall getProvincesCall = GetProvincesCall();
  static GetCityCall getCityCall = GetCityCall();
  static BarangayCall barangayCall = BarangayCall();
}

class GetProvincesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Provinces',
      apiUrl: '${AddressGroup.baseUrl}/provinces',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCityCall {
  Future<ApiCallResponse> call({
    String? provinceCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get City',
      apiUrl: '${AddressGroup.baseUrl}/provinces/$provinceCode',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BarangayCall {
  Future<ApiCallResponse> call({
    String? cityOrMunicipalityCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Barangay',
      apiUrl:
          '${AddressGroup.baseUrl}/cities-municipalities/$cityOrMunicipalityCode/barangays/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ADDRESS Group Code

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
