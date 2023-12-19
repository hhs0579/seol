import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seol/pages/mypage/2.dart';
import 'package:seol/pages/mypage/3.dart';
import 'package:seol/pages/mypage/4.dart';
import 'package:seol/pages/mypage/myclothes/1.dart';
import 'package:seol/pages/mypage/myorder/1.dart';
import 'package:seol/pages/mypage/myqna/1.dart';
import 'package:seol/pages/mypage/myreview/1.dart';
import 'package:seol/pages/mypage/mysize/1.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/userProvider.dart';

class MyPage1 extends StatelessWidget {
  const MyPage1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<UserProvider>(
        builder: (context, model, _) => SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 40, bottom: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // 그림자 색상
                      spreadRadius: 0, // 그림자의 범위
                      blurRadius: 5, // 그림자의 흐림 정도
                      offset:
                          const Offset(0, -3), // x, y 축의 그림자 위치 조정 (여기서는 아래쪽으로)
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                          '마이페이지',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/91.png',
                      scale: 2,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // 그림자 색상
                      spreadRadius: 0, // 그림자의 범위
                      blurRadius: 5, // 그림자의 흐림 정도
                      offset:
                          const Offset(0, 3), // x, y 축의 그림자 위치 조정 (여기서는 아래쪽으로)
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(left: 20, top: 30, right: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/12.png'),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  model.nickname,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const Text(
                                  ' 님',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
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
                                        const mypage4(), // 여기에 새로운 페이지 위젯을 넣으세요.
                                  ),
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: ColorList.grey)),
                                child: const Icon(
                                  Icons.settings,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 20,
                      ),
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const mypage2(), // 여기에 새로운 페이지 위젯을 넣으세요.
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/92.png',
                                  scale: 2,
                                ),
                              ),
                              Container(
                                width: 20,
                              ),
                              Container(
                                width: 1,
                                height: 20,
                                color: ColorList.grey,
                              ),
                              Container(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const mypage3(), // 여기에 새로운 페이지 위젯을 넣으세요.
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/93.png',
                                  scale: 2,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/94.png',
                            scale: 2,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
              Container(
                width: width,
                height: height * 0.34,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const mysize(), // 여기에 새로운 페이지 위젯을 넣으세요.
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/images/95.png',
                            scale: 2.2,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const mycloths()));
                          },
                          child: Image.asset(
                            'assets/images/96.png',
                            scale: 2.2,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyOder()));
                          },
                          child: Image.asset(
                            'assets/images/97.png',
                            scale: 2.2,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/98.png',
                          scale: 1.1,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const myReview()));
                          },
                          child: Image.asset(
                            'assets/images/99.png',
                            scale: 2.2,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Myqna()));
                          },
                          child: Image.asset(
                            'assets/images/100.png',
                            scale: 2.2,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                height: 1,
                color: ColorList.grey,
                padding: const EdgeInsets.only(left: 20, right: 20),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      bottom: 20, left: 20, right: 20, top: 10),
                  child: Image.asset('assets/images/101.png'))
            ],
          ),
        ),
      ),
    );
  }
}
