class Session {
  static dynamic _count = 0;

  static dynamic get getCount => _count;

  static set setCount(value) {
    _count = value;
  }
}
