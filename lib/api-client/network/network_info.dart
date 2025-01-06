import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfoBase {
  Future<bool> get isConnected;
}

class NetworkInfo extends NetworkInfoBase {
  final InternetConnectionChecker internetConnectionChecker;

  NetworkInfo(this.internetConnectionChecker);
  @override
  // TODO: implement isConnected
  Future<bool> get isConnected => InternetConnectionChecker().hasConnection;
}
