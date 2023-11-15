import 'package:flutter/material.dart';
import 'package:seol/bottom.dart';

void myAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      return AlertDialog(
        content: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Bottom(showBottomSheet: true), // 여기에 새로운 페이지 위젯을 넣으세요.
              ),
            );
          },
          splashColor: Colors.transparent, // 물결 효과를 투명하게
          highlightColor: Colors.transparent,
          child: Image.asset(
            'assets/images/32.png',
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
