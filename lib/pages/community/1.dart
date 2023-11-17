import 'package:flutter/material.dart';

class community1 extends StatelessWidget {
  const community1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/75.png',
                      scale: 2,
                    ),
                    Image.asset(
                      'assets/images/12.png',
                      scale: 2,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Image.asset('assets/images/76.png'),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white, // 배경색 설정
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // 그림자 색상
                      spreadRadius: 0, // 그림자의 확장 정도
                      blurRadius: 5, // 흐림 정도
                      offset: const Offset(0, 5), // 수평 및 수직 오프셋 (여기서는 아래쪽으로 5)
                    ),
                  ],
                ),
                child: const Text(
                  '설계장의 설계 보드',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 40, left: 10, right: 10),
                  child: Image.asset('assets/images/77.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
