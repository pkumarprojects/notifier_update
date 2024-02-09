import 'package:flutter/foundation.dart';

import '../util/session.dart';

class Counter with ChangeNotifier {
  int _count = Session.getCount;

  int get getCount => _count;

  void increase() {
    _count++;
    Session.setCount = _count;
    notifyListeners();
  }

  void decrease() {
    _count--;
    Session.setCount = _count;
    notifyListeners();
  }
}
