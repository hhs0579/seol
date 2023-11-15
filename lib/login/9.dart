import 'package:flutter/material.dart';
import 'package:seol/bottom.dart';

class login9 extends StatelessWidget {
  const login9({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Bottom(
              showBottomSheet: false,
            ), // 여기에 새로운 페이지 위젯을 넣으세요.
          ),
        );
      },
      splashColor: Colors.transparent, // 물결 효과를 투명하게
      highlightColor: Colors.transparent,
      child: SizedBox(
          width: width,
          height: height,
          child: Image.asset(
            'assets/images/10.png',
            fit: BoxFit.fill,
          )),
    ));
  }
}
