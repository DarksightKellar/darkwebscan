import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';

class ConnectionStatusSingleton {
  static ConnectionStatusSingleton getInstance() => _singleton;
  final StreamController<bool> _connectionChangeController = StreamController<bool>.broadcast();
  final Connectivity _connectivity = Connectivity();

  static final ConnectionStatusSingleton _singleton = ConnectionStatusSingleton._internal();
  ConnectionStatusSingleton._internal();

  void initialize() {
    _connectivity.onConnectivityChanged.listen(_connectionStateChanged);

    // Check the connection status out of the gate
    checkConnection();
  }

  // Use to subscribe to connection changes
  Stream<bool> get connectionChangeStream => _connectionChangeController.stream;

  void dispose() {
    _connectionChangeController.close();
  }

  void _connectionStateChanged(ConnectivityResult result) => checkConnection();

  //The test to actually see if there is a connection
  Future<bool> checkConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        _connectionChangeController.add(true);
        return true;
      } else {
        _connectionChangeController.add(false);
        return false;
      }
    } on SocketException catch (_) {
      _connectionChangeController.add(false);
      return false;
    }
  }
}
