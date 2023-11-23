import 'package:flutter/material.dart';
import 'package:seol/pages/mypage/5.dart';
import 'package:seol/pages/mypage/6.dart';

import '../../widget/bottomsheet.dart';

class mypage4 extends StatelessWidget {
  const mypage4({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          width: width,
          height: height,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: width,
                height: 100,
                padding: const EdgeInsets.only(
                    top: 40, bottom: 20, left: 20, right: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    // 그림자 추가
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                    const Text(
                      '나의 정보',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Container(
                      width: 40,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  showCustomDialog3(context);
                },
                child: Image.asset(
                  'assets/images/104.png',
                  scale: 2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const mypage5(), // 여기에 새로운 페이지 위젯을 넣으세요.
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/105.png',
                  scale: 2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const mypage6(), // 여기에 새로운 페이지 위젯을 넣으세요.
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/106.png',
                  scale: 2,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/107.png',
                scale: 2,
              )
            ],
          )),
    );
  }
}
