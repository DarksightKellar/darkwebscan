import 'package:DarkwebScan/core/failures.dart';
import 'package:DarkwebScan/features/darkweb_scan/domain/usecases/scan_web.dart';
import 'package:DarkwebScan/features/darkweb_scan/presentation/state/darkweb_scan_cubit.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../fixtures/breaches_data.dart';

class MockScanWeb extends Mock implements ScanWeb {}

Future<void> main() async {
  final _scanWeb = MockScanWeb();

  // Mock Usecase Responses
  when(_scanWeb.call(argThat(isA<ScanWebParams>()))).thenAnswer((_) async => const Right(breachesSample));

  group('DarkwebScan Cubit', () {
    test(
      'Initial behaviour: DarkwebScanCubit is initialised with empty list',
      () {
        final cubit = DarkwebScanCubit(_scanWeb);
        expect(cubit.state.payload.breaches, []);
        expect(cubit.state.payload.error, '');
      },
    );

    group("scan web", () {
      test('DarkwebScanCubit scanWeb emits loading, then loaded, with payload populated with returned data', () async {
        final cubit = DarkwebScanCubit(_scanWeb);

        // ignore: unawaited_futures
        expectLater(
            cubit,
            emitsInOrder(<DarkwebScanState>[
              DarkwebScanState.loading(payload: cubit.state.payload.copyWith(breaches: [])),
              DarkwebScanState.loaded(payload: cubit.state.payload.copyWith(breaches: breachesSample)),
            ]));

        await cubit.scanWeb(phone: '12345', email: 'a@b.com');

        verify(_scanWeb.call(argThat(isA<ScanWebParams>())));
      });

      test('DarkwebScanCubit scanWeb emits loading, then error, with error message, if something goes wrong', () async {
        final cubit = DarkwebScanCubit(_scanWeb);

        when(_scanWeb.call(any)).thenAnswer((_) async => const Left(UIError('error')));

        // ignore: unawaited_futures
        expectLater(
            cubit,
            emitsInOrder(<DarkwebScanState>[
              DarkwebScanState.loading(payload: cubit.state.payload.copyWith(breaches: [])),
              DarkwebScanState.error(payload: cubit.state.payload.copyWith(error: 'error')),
            ]));

        await cubit.scanWeb(phone: '12345', email: 'a@b.com');

        verify(_scanWeb.call(any));
      });
    });
  });
}
