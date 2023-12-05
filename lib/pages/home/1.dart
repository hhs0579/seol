import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seol/bottom.dart';
import 'package:seol/pages/home/2.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/userProvider.dart';

import '../mypage/1.dart';

class home1 extends StatelessWidget {
  const home1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
            child: Consumer<UserProvider>(
                builder: (context, model, _) => Column(
                      children: [
                        Container(
                          color: ColorList.lightbrown,
                          child: Column(
                            children: [
                              Container(
                                  padding:
                                      const EdgeInsets.only(top: 60, right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Icon(
                                          Icons.bookmark_border_outlined),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const home2(), // 여기에 새로운 페이지 위젯을 넣으세요.
                                              ),
                                            );
                                          },
                                          child: const Icon(Icons
                                              .notifications_none_outlined)),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(Icons.shopping_bag_outlined)
                                    ],
                                  )),
                              Container(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/11.png',
                                      scale: 2,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const MyPage1(), // 여기에 새로운 페이지 위젯을 넣으세요.
                                          ),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              const Text(
                                                '마이페이지',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                '${model.nickname}님',
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const Text(
                                                '반가워요!',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 60,
                                            child: Image.asset(
                                              'assets/images/12.png',
                                              scale: 1,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Bottom(
                                          showBottomSheet: false,
                                          initialIndex:
                                              2), // 여기에 새로운 페이지 위젯을 넣으세요.
                                    ),
                                  );
                                },
                                child: Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    width: width,
                                    height: height * 0.5,
                                    child: Image.asset(
                                      'assets/images/13.png',
                                    )),
                              ),
                              Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/14.png'))
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Bottom(
                                    showBottomSheet: false,
                                    initialIndex: 4), // 여기에 새로운 페이지 위젯을 넣으세요.
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Text(
                                        '${model.nickname}님',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const Text(
                                        '의 스타일 분석리포트',
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ]),
                                    const Row(
                                      children: [
                                        Text('더보기'),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 10,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Image.asset('assets/images/15.png')
                              ],
                            ),
                          ),
                        )
                      ],
                    ))),
      ),
    );
  }
}
