import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String _nickname = '';
  String get nickname => _nickname;
  bool isNicknameLengthValid = false;
  bool isNicknameCharactersValid = false;
  bool get isNicknameValid =>
      isNicknameLengthValid && isNicknameCharactersValid;
  set nickname(String newValue) {
    _nickname = newValue;
    notifyListeners();
  }

  void validateNickname(String value) {
    isNicknameLengthValid = value.length >= 2;
    notifyListeners();
  }

  void validateNickname2(String value) {
    // 한글 자음과 모음의 범위를 정의합니다.

    // 정규 표현식을 사용하여 단일 자음 또는 모음, 불완전한 조합을 검사합니다.
    RegExp regExp = RegExp(r'^[\uAC00-\uD7A3]+$');

    // 입력된 값이 정규 표현식에 매칭되는지 검사합니다.
    isNicknameCharactersValid = regExp.hasMatch(value);
    // 변경사항을 알립니다.
    notifyListeners();
  }

  bool _isMale = false;
  bool _isFemale = false;
  bool get isMale => _isMale;
  bool get isFemale => _isFemale;
  set isMale(bool newValue) {
    if (newValue) {
      _isMale = true;
      _isFemale = false; // 남자를 선택하면 여자 선택을 취소합니다.
    } else {
      _isMale = false; // 토글 기능을 위해 추가할 수도 있습니다.
    }
    notifyListeners();
  }

  set isFemale(bool newValue) {
    if (newValue) {
      _isFemale = true;
      _isMale = false; // 여자를 선택하면 남자 선택을 취소합니다.
    } else {
      _isFemale = false; // 토글 기능을 위해 추가할 수도 있습니다.
    }
    notifyListeners();
  }

  void clearGender() {
    _isMale = false;
    _isFemale = false;
    notifyListeners();
  }

  int _height = 0;
  int _weight = 0;
  String _top = '';
  String _bottom = '';
  String _foot = '';
  int get height => _height;
  set height(int newHeight) {
    _height = newHeight;
    notifyListeners();
  }

  int get weight => _weight;
  set weight(int newWeight) {
    _weight = newWeight;
    notifyListeners();
  }

  String get top => _top;
  set top(String newTop) {
    _top = newTop;
    notifyListeners();
  }

  String get bottom => _bottom;
  set bottom(String newBottom) {
    _bottom = newBottom;
    notifyListeners();
  }

  String get foot => _foot;
  set foot(String newFoot) {
    _foot = newFoot;
    notifyListeners();
  }

  void clear() {
    _nickname = '';
    clearGender();
    notifyListeners();
  }
}
