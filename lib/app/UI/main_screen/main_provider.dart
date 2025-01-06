import 'package:flutter/foundation.dart';

class MainProvider extends ChangeNotifier {
  int _seletedIndex = 0;
  int get seletedIndex => _seletedIndex;

  void seletedFunc(int index) {
    _seletedIndex = index;
    notifyListeners();
  }
}
