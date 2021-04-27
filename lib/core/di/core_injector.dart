import 'package:kiwi/kiwi.dart';

import '../data/network/network_service.dart';
import '../data/network/network_service_impl.dart';

part 'core_injector.g.dart';

abstract class CoreInjector {
  static KiwiContainer container;
  static final resolve = container.resolve;

  void setup() {
    container = KiwiContainer();
    _$CoreInjector()._configure();
  }

  @Register.factory(NetworkService, from: NetworkServiceImpl)
  void _configure(); // ignore: unused_element
}

CoreInjector coreInjector() => _$CoreInjector();
