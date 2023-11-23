import 'package:flutter/material.dart';

class mypage3 extends StatelessWidget {
  const mypage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: const EdgeInsets.only(top: 20),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/images/103.png'))),
    );
  }
}
