import 'package:DarkwebScan/core/failures.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/repositories/darkweb_scan_repository.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/usecases/scan_web.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/breaches_data.dart';

class MockDarkwebScanRepository extends Mock implements DarkwebScanRepository {}

void main() {
  ScanWeb testSubject;

  MockDarkwebScanRepository repository;

  setUp(() {
    repository = MockDarkwebScanRepository();
    testSubject = ScanWeb(repository);
  });

  const email = "a@b.com";
  const phone = "123456";
  const _scanWebParams = ScanWebParams(email: email, phone: phone);

  test('scanWeb calls DarkwebScanRepository\'s scanWeb', () {
    testSubject(_scanWebParams);

    verify(repository.scanWeb(email: anyNamed('email'), phone: anyNamed('phone')));
    verifyNoMoreInteractions(repository);

    // Need this to reset the interactions on mocked object
    clearInteractions(repository);
  });

  test('scanWeb returns a list of breaches from sever', () async {
    when(repository.scanWeb(email: anyNamed('email'), phone: anyNamed('phone')))
        .thenAnswer((_) async => breachesSample);

    final result = await testSubject(_scanWebParams);

    expect(result.isRight(), true);
    result.fold(null, (r) => expect(r, breachesSample));
  });

  // Test failures too
  test('scanWeb returns an error message upon failure', () async {
    // Test NetworkFailure handling
    when(repository.scanWeb(email: anyNamed('email'), phone: anyNamed('phone'))).thenThrow(NetworkFailure('message'));

    final result = await testSubject(_scanWebParams);

    expect(result.isLeft(), true);
    result.fold((l) => expect(l.message, 'message'), null);

    // Test CacheFailure handling
    when(repository.scanWeb(email: anyNamed('email'), phone: anyNamed('phone'))).thenThrow(CacheFailure('message'));

    final result2 = await testSubject(_scanWebParams);

    expect(result2.isLeft(), true);
    result2.fold((l) => expect(l.message, 'message'), null);
  });
}
