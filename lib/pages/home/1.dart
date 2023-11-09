import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/userProvider.dart';

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
                                    children: const [
                                      Icon(Icons.bookmark_border_outlined),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.notifications_none_outlined),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.shopping_bag_outlined)
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
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            const Text(
                                              '마이페이지',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              '${model.nickname}님',
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
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
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  width: width,
                                  height: height * 0.5,
                                  child: Image.asset(
                                    'assets/images/13.png',
                                  )),
                              Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/14.png'))
                            ],
                          ),
                        ),
                        Container(
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
                                  Row(
                                    children: const [
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
                        )
                      ],
                    ))),
      ),
    );
  }
}
