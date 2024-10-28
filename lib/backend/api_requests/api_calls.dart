import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ADDRESS Group Code

class AddressGroup {
  static String getBaseUrl() => 'https://psgc.gitlab.io/api';
  static Map<String, String> headers = {};
  static GetProvincesCall getProvincesCall = GetProvincesCall();
  static GetCityCall getCityCall = GetCityCall();
  static BarangayCall barangayCall = BarangayCall();
  static GetSpecificProvinceCall getSpecificProvinceCall =
      GetSpecificProvinceCall();
  static GetSpecificCityCall getSpecificCityCall = GetSpecificCityCall();
  static GetSpecificBarangayCall getSpecificBarangayCall =
      GetSpecificBarangayCall();
}

class GetProvincesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AddressGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Provinces',
      apiUrl: '$baseUrl/provinces',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'fields': "code",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetCityCall {
  Future<ApiCallResponse> call({
    String? provinceCode = '',
  }) async {
    final baseUrl = AddressGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get City',
      apiUrl: '$baseUrl/provinces/$provinceCode/cities-municipalities',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BarangayCall {
  Future<ApiCallResponse> call({
    String? cityOrMunicipalityCode = '',
  }) async {
    final baseUrl = AddressGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Barangay',
      apiUrl:
          '$baseUrl/cities-municipalities/$cityOrMunicipalityCode/barangays/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetSpecificProvinceCall {
  Future<ApiCallResponse> call({
    String? provinceCode = '',
  }) async {
    final baseUrl = AddressGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Specific Province',
      apiUrl: '$baseUrl/provinces/$provinceCode',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
}

class GetSpecificCityCall {
  Future<ApiCallResponse> call({
    String? cityCode = '',
  }) async {
    final baseUrl = AddressGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Specific City',
      apiUrl: '$baseUrl/cities-municipalities/$cityCode',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
}

class GetSpecificBarangayCall {
  Future<ApiCallResponse> call({
    String? barangayCode = '',
  }) async {
    final baseUrl = AddressGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Specific Barangay',
      apiUrl: '$baseUrl/barangays/$barangayCode',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? code(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
}

/// End ADDRESS Group Code

class CountriesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'countries',
      apiUrl: 'https://countriesnow.space/api/v0.1/countries/positions',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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
