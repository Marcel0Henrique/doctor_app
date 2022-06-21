import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginController with ChangeNotifier {
  bool _obscureText = true;
  Icon _visibleIcon = Icon(Icons.visibility);

  Icon get visibleIcon => _visibleIcon;
  bool get obscureText => _obscureText;

  showPasword() {
    if (_obscureText) {
      _obscureText = false;
      _visibleIcon = Icon(Icons.visibility_off);
    } else {
      _obscureText = true;
      _visibleIcon = Icon(Icons.visibility);
    }
    notifyListeners();
  }
}
