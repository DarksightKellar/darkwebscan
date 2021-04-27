import 'package:dio/dio.dart';

import 'config.dart';
import 'network_service.dart';

class NetworkServiceImpl implements NetworkService {
  Dio _dio;

  NetworkServiceImpl() {
    final _options = BaseOptions(
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      baseUrl: kApiUrl,
    );

    _dio = Dio(_options);
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options) async {
        options.headers.addAll({
          "hibp-api-key": "1b9cd575365e4d02a6b47d745b776a5e",
          "user-agent": "Darkweb Scan",
        });
        return options;
      },
    ));
  }

  @override
  Future<Map<String, dynamic>> getHttp(
    String endpoint, {
    Map<String, dynamic> params,
    Map<String, dynamic> headers,
  }) async {
    try {
      final response = await _dio.get(
        endpoint,
        queryParameters: params,
        options: Options(headers: headers),
      );
      return _handleApiResponse(response);
    } on DioError catch (e) {
      return _handleApiResponse(e.response);
    } catch (e) {
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': '${e.toString()}',
      };
    }
  }

  @override
  Future<Map<String, dynamic>> postHttp(
    String endpoint, {
    Map<String, dynamic> params,
    dynamic body,
    Map<String, dynamic> headers,
    bool tokenRequired = true,
    String transactionToken,
  }) async {
    try {
      final response = await _dio.post(
        endpoint,
        queryParameters: params,
        data: body,
        options: Options(headers: headers),
      );
      return _handleApiResponse(response);
    } on DioError catch (e) {
      return _handleApiResponse(e.response);
    } catch (e) {
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': '${e.toString()}',
      };
    }
  }

  @override
  Future<Map<String, dynamic>> deleteHttp(
    String endpoint, {
    Map<String, dynamic> params,
    Map<String, dynamic> body,
    Map<String, dynamic> headers,
    bool tokenRequired = true,
  }) async {
    try {
      final response = await _dio.delete(
        endpoint,
        queryParameters: params,
        data: body,
        options: Options(
          extra: {'token-required': tokenRequired},
          headers: headers,
        ),
      );

      return _handleApiResponse(response);
    } on DioError catch (e) {
      return _handleApiResponse(e.response);
    } catch (e) {
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': '${e.toString()}',
      };
    }
  }

  Map<String, dynamic> _handleApiResponse(Response response) {
    if (response == null) {
      return <String, dynamic>{
        'error': ApiErrors.failure,
        'message': "(null response)",
      };
    }

    if (response.statusCode.toString().startsWith('2')) {
      if (response.data is Map && (response.data as Map).containsKey('data')) {
        return response.data as Map<String, dynamic>;
      }

      return <String, dynamic>{'data': response.data};
    }

    final errorResult = <String, dynamic>{
      'message': 'API: ${response.data['message']}',
      'data': response.data,
    };

    switch (response.statusCode) {
      case 400:
        errorResult['error'] = ApiErrors.badRequest;
        break;
      case 403:
        errorResult['error'] = ApiErrors.forbidden;
        break;
      case 404:
        errorResult['error'] = ApiErrors.notFound;
        break;
      case 500:
        errorResult['error'] = ApiErrors.serverError;
        break;
      default:
        errorResult['error'] = ApiErrors.unknown;
    }

    assert(errorResult['error'] != null);
    assert(errorResult['error'] is ApiErrors);

    assert(errorResult['message'] != null);
    assert(errorResult['message'] is String);

    return errorResult;
  }
}

enum ApiErrors {
  serverError,
  badRequest,
  notFound,
  forbidden,
  unknown,
  noInternet,
  failure,
}
