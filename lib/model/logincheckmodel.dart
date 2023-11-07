import 'package:flutter/material.dart';

class AgreementModel with ChangeNotifier {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;

  bool get isChecked1 => _isChecked1;
  bool get isChecked2 => _isChecked2;
  bool get isChecked3 => _isChecked3;
  bool get isChecked4 => _isChecked4;
  bool get isChecked5 => _isChecked5;

  void toggleAll() {
    if (_isChecked1) {
      _isChecked1 = false;
      _isChecked2 = false;
      _isChecked3 = false;
      _isChecked4 = false;
      _isChecked5 = false;
    } else {
      _isChecked1 = true;
      _isChecked2 = true;
      _isChecked3 = true;
      _isChecked4 = true;
      _isChecked5 = true;
    }
    notifyListeners();
  }

  void toggleCheck2() {
    _isChecked1 = false;
    _isChecked2 = !_isChecked2;
    if (_isChecked2 == true &&
        _isChecked3 == true &&
        _isChecked4 == true &&
        _isChecked5 == true) {
      _isChecked1 = true;
    }

    notifyListeners();
  }

  void toggleCheck3() {
    _isChecked1 = false;
    _isChecked3 = !_isChecked3;
    if (_isChecked2 == true &&
        _isChecked3 == true &&
        _isChecked4 == true &&
        _isChecked5 == true) {
      _isChecked1 = true;
    }

    notifyListeners();
  }

  void toggleCheck4() {
    _isChecked1 = false;
    _isChecked4 = !_isChecked4;
    if (_isChecked2 == true &&
        _isChecked3 == true &&
        _isChecked4 == true &&
        _isChecked5 == true) {
      _isChecked1 = true;
    }

    notifyListeners();
  }

  void toggleCheck5() {
    _isChecked1 = false;
    _isChecked5 = !_isChecked5;
    if (_isChecked2 == true &&
        _isChecked3 == true &&
        _isChecked4 == true &&
        _isChecked5 == true) {
      _isChecked1 = true;
    }

    notifyListeners();
  }
  // 추가적인 toggle 메서드들을 작성할 수 있습니다.
}
