import 'package:DarkwebScan/features/darkweb_scan/domain/models/breach_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/breaches_data.dart';

void main() {
  test('fromJson returns a BreachModel', () => expect(BreachModel.fromJson(breachJson), breachModel));
  test('toJson returns a valid Map<String, dynamic>', () => expect(breachModel.toJson(), breachJson));
}
