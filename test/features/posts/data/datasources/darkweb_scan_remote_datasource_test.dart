import 'package:DarkwebScan/core/data/network/network_service.dart';
import 'package:DarkwebScan/core/data/network/network_service_impl.dart';
import 'package:DarkwebScan/core/failures.dart';
import 'package:DarkwebScan/features/darkweb_scan/data/datasources/darkweb_scan_remote_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/breaches_data.dart';

class MockNetworkService extends Mock implements NetworkService {}

void main() {
  DarkwebScanRemoteDatasourceImpl testSubject;
  final networkService = MockNetworkService();

  setUp(() {
    testSubject = DarkwebScanRemoteDatasourceImpl(networkService);
  });

  const email = "a@b.com";
  const phone = "123456";

  group('scanWeb', () {
    test(' returns a successfully deserialised List<BreachModel> from server', () async {
      when(networkService.getHttp(argThat(isA<String>()))).thenAnswer(
        (_) async => {
          "data": breachesSampleJson,
          "error": null,
        },
      );

      final result = await testSubject.scanWeb(email: email, phone: phone);

      expect(result, breachesSample);
    });

    group('Error handling', () {
      test('Throws an ApiFailure on server error', () {
        when(networkService.getHttp(argThat(isA<String>()))).thenAnswer(
          (_) async => <String, dynamic>{
            'error': ApiErrors.failure,
            'message': 'error',
          },
        );

        expectLater(() async => testSubject.scanWeb(email: email, phone: phone), throwsA(isA<ApiFailure>()));
      });

      test('Throws an Exception on unexpected exception', () {
        when(networkService.getHttp(argThat(isA<String>()))).thenThrow(Exception());

        expect(() => testSubject.scanWeb(email: email, phone: phone), throwsA(isA<Exception>()));
      });
    });
  });
}
