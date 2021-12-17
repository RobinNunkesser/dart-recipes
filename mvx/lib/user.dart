import 'package:flutter/foundation.dart';

class User with ChangeNotifier {

  String _forename = '';

  String get forename => _forename;

  set forename(String newValue) {
    _forename = newValue;
    notifyListeners();
  }

  String _surname = '';

  String get surname => _surname;

  set surname(String newValue) {
    _surname = newValue;
    notifyListeners();
  }

  String get greeting => 'Hello $forename!';

}