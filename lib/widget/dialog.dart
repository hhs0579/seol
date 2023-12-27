import 'package:flutter/material.dart';
import 'package:seol/bottom.dart';
import 'package:seol/pages/search/3.dart';

void myAlert(BuildContext context) {
  bool a = false;
}

void myAlert2(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.of(context).pop();
      });
      return AlertDialog(
        content: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Bottom(
                    showBottomSheet: true), // 여기에 새로운 페이지 위젯을 넣으세요.
              ),
            );
          },
          splashColor: Colors.transparent, // 물결 효과를 투명하게
          highlightColor: Colors.transparent,
          child: Image.asset(
            'assets/images/81.png',
            fit: BoxFit.cover,
            width: width * 0.8, // 전체 화면 너비의 80%
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
        ),
        contentPadding: EdgeInsets.zero, // 내부 여백 제거
        insetPadding: const EdgeInsets.all(10), // AlertDialog 외부 여백 조정
        // AlertDialog의 다른 속성들...
      );
    },
  );
}

void myAlert3(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.of(context).pop();
      });
      return AlertDialog(
        content: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Bottom(
                    showBottomSheet: true), // 여기에 새로운 페이지 위젯을 넣으세요.
              ),
            );
          },
          splashColor: Colors.transparent, // 물결 효과를 투명하게
          highlightColor: Colors.transparent,
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Image.asset(
              'assets/images/187.png',
              fit: BoxFit.contain,
              width: width * 0.8, // 전체 화면 너비의 80%
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
        ),
        contentPadding: EdgeInsets.zero, // 내부 여백 제거
        insetPadding: const EdgeInsets.all(10), // AlertDialog 외부 여백 조정
        // AlertDialog의 다른 속성들...
      );
    },
  );
}

void myAlert4(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.of(context).pop();
      });
      return AlertDialog(
        content: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Bottom(
                    showBottomSheet: true), // 여기에 새로운 페이지 위젯을 넣으세요.
              ),
            );
          },
          splashColor: Colors.transparent, // 물결 효과를 투명하게
          highlightColor: Colors.transparent,
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Image.asset(
              'assets/images/189.png',
              fit: BoxFit.contain,
              width: width * 0.8, // 전체 화면 너비의 80%
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
        ),
        contentPadding: EdgeInsets.zero, // 내부 여백 제거
        insetPadding: const EdgeInsets.all(10), // AlertDialog 외부 여백 조정
        // AlertDialog의 다른 속성들...
      );
    },
  );
}

void ordercancelDone(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      var height = MediaQuery.of(context).size.height;
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.of(context).pop();
      });
      return AlertDialog(
        content: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          splashColor: Colors.transparent, // 물결 효과를 투명하게
          highlightColor: Colors.transparent,
          child: Container(
            width: width * 0.8, // 전체 화면 너비의 80%
            height: height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),

            child: Image.asset(
              'assets/images/161.png',
              scale: 1.2,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
        ),
        contentPadding: EdgeInsets.zero, // 내부 여백 제거
        insetPadding: const EdgeInsets.all(10), // AlertDialog 외부 여백 조정
        // AlertDialog의 다른 속성들...
      );
    },
  );
}

void reviewAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      var height = MediaQuery.of(context).size.height;
      return AlertDialog(
        content: Container(
          height: height * 0.6,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            splashColor: Colors.transparent, // 물결 효과를 투명하게
            highlightColor: Colors.transparent,
            child: Image.asset(
              'assets/images/173.png',
              fit: BoxFit.contain,
              width: width * 0.8, // 전체 화면 너비의 80%
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
        ),
        contentPadding: EdgeInsets.zero, // 내부 여백 제거
        insetPadding: const EdgeInsets.all(10), // AlertDialog 외부 여백 조정
        // AlertDialog의 다른 속성들...
      );
    },
  );
}
