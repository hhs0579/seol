import 'package:flutter/material.dart';
import 'package:seol/tutorial/2.dart';

class tutorial1 extends StatelessWidget {
  const tutorial1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const tutorial2(), // 여기에 새로운 페이지 위젯을 넣으세요.
              ),
            );
          },
          splashColor: Colors.transparent, // 물결 효과를 투명하게
          highlightColor: Colors.transparent,
          child: Image.asset(
            'assets/images/tutorial1.png',
            scale: 1,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
