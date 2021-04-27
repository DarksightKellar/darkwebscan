import 'dart:async';

abstract class LocalDatasource<T> {
  // ignore: close_sinks
  final StreamController<T> dataStreamController = StreamController<T>();
  void dispose();
}
