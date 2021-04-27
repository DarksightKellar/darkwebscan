import 'package:DarkwebScan/features/darkweb_scan/domain/models/breach_model.dart';
import 'package:flutter/foundation.dart' show required;

abstract class DarkwebScanRepository {
  Future<List<BreachModel>> scanWeb({
    @required String email,
    @required String phone,
  });
}
