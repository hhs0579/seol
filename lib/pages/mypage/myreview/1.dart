import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/reviewbottom.dart';

class myReview extends StatefulWidget {
  const myReview({super.key});

  @override
  State<myReview> createState() => _myReviewState();
}

class _myReviewState extends State<myReview> {
  bool a = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Text(
          '나의 후기',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 1,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                color: Colors.white,
                width: width,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          a = false;
                        });
                      },
                      child: Text(
                        '전체',
                        style: TextStyle(
                            color: a ? Colors.grey : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          a = true;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_box,
                            color: a ? Colors.black : Colors.grey,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text('작성완료 후기만 보기',
                              style: TextStyle(
                                  color: a ? Colors.black : Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: a
                    ? Column(
                        children: [
                          Image.asset('assets/images/144.png'),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset('assets/images/144.png'),
                        ],
                      )
                    : Column(
                        children: [
                          InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  backgroundColor: Colors.white,
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return const ReviewBottom();
                                  },
                                ).then((value) {
                                  _showDialog();
                                });
                              },
                              child: InkWell(
                                  child: Image.asset('assets/images/143.png'))),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  backgroundColor: Colors.white,
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      height: height * 0.8,
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20, left: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(),
                                                const Text(
                                                  '나의 후기 ',
                                                  style: TextStyle(
                                                      fontFamily: 'jiji',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 20),
                                                ),
                                                const Icon(Icons.close,
                                                    color: Colors.black,
                                                    size: 25)
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Image.asset(
                                            'assets/images/146.png',
                                            scale: 1.2,
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 1,
                                            width: width * 0.9,
                                            color: ColorList.grey,
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Image.asset(
                                            'assets/images/147.png',
                                            scale: 1.1,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Image.asset('assets/images/144.png')),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset('assets/images/143.png'),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset('assets/images/144.png'),
                        ],
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Theme(
          data: ThemeData(
            dialogBackgroundColor: Colors.white,
          ),
          child: AlertDialog(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.transparent,
              // 다이얼로그 내용
              content: SizedBox(
                  width: width * 0.9,
                  height: height * 0.25,
                  child: Column(children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      '후기 작성 완료',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 1,
                      width: width * 0.5,
                      color: ColorList.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Column(
                      children: [
                        Text('후기 작성이 정상적으로 완료되었어요!',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '적립금 500원이 지급되었습니다',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: ColorList.blue),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    )
                  ]))),
        );
      },
    );
  }
}
