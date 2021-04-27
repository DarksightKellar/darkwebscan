import 'data/network/network_service_impl.dart';

class Failure {
  final String message;
  final dynamic data;
  const Failure(this.message, {this.data});

  @override
  String toString() => message;
}

class ApiFailure extends Failure {
  final ApiErrors errorCode;
  ApiFailure(this.errorCode, String message) : super(message);
}

class DBFailure extends Failure {
  DBFailure(String message) : super(message);
}

class NetworkFailure {
  final String message;
  NetworkFailure(this.message);
}

class CacheFailure {
  final String message;
  CacheFailure(this.message);
}

class UIError {
  final String message;
  const UIError(this.message);
}
