import 'package:DarkwebScan/core/data/network/network_service_impl.dart';
import 'package:DarkwebScan/core/failures.dart';
import 'package:DarkwebScan/features/darkweb_scan/data/datasources/darkweb_scan_remote_datasource.dart';
import 'package:DarkwebScan/features/darkweb_scan/data/repositories/darkweb_scan_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/breaches_data.dart';

class MockRemoteDataSource extends Mock implements DarkwebScanRemoteDatasource {}

void main() {
  DarkwebScanRepositoryImpl testSubject;
  final remoteDatasource = MockRemoteDataSource();

  setUp(() {
    testSubject = DarkwebScanRepositoryImpl(remoteDatasource);
  });

  const email = "a@b.com";
  const phone = "123456";

  group('scanWeb', () {
    test(' calls remoteDatasource\'s scanWeb', () {
      testSubject.scanWeb(email: email, phone: phone);

      verify(remoteDatasource.scanWeb(email: email, phone: phone));
      verifyNoMoreInteractions(remoteDatasource);

      // Need this to reset the interactions on mocked object
      clearInteractions(remoteDatasource);
    });

    test(' returns a list of [BreachModel]s from server', () async {
      when(remoteDatasource.scanWeb(email: anyNamed('email'), phone: anyNamed('phone'))).thenAnswer(
        (_) async => breachesSample,
      );

      final res = await testSubject.scanWeb(email: email, phone: phone);

      expect(res, breachesSample);
    });

    group('Error handling', () {
      test('Throws a NetworkFailure on network operation exception', () {
        when(remoteDatasource.scanWeb(email: anyNamed('email'), phone: anyNamed('phone'))).thenThrow(
          ApiFailure(ApiErrors.failure, ''),
        );

        expectLater(() async => testSubject.scanWeb(email: email, phone: phone), throwsA(isA<NetworkFailure>()));
      });
    });
  });
}
