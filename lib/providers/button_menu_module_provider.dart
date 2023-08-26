import 'package:flutter/material.dart';

class ButtomMneuModuleProvider extends ChangeNotifier {
  bool _btnFocus = false;

  GlobalKey _btnKey = GlobalKey();

  GlobalKey get getBtnKey {
    return _btnKey;
  }

  set setBtnKey(GlobalKey value) {
    _btnKey = value;
  }

  bool get getBtnFocus {
    return _btnFocus;
  }

  set setBtnFocus(bool value) {
    _btnFocus = value;
    notifyListeners();
  }

  setButtonFocus() {}
}
