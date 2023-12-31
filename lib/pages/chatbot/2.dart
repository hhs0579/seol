import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seol/pages/mypage/myclothes/1.dart';

import '../../utils/color.dart';
import '../../widget/bottompicker.dart';

class chatbot2 extends StatefulWidget {
  const chatbot2({
    super.key,
  });

  @override
  State<chatbot2> createState() => _chatbot2State();
}

class _chatbot2State extends State<chatbot2> {
  List<Widget> images = [];
  Timer? timer;
  int imageIndex = 0;
  final List<String> imagePaths = [
    'assets/images/21.png',

    'assets/images/22.png',
    // 여기에 더 많은 이미지 경로를 추가할 수 있습니다.
  ];
  bool a = false;
  bool b = false;
  bool c = false;
  final PageController controller = PageController();
  @override
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {}); // 페이지 변경 시 UI 업데이트
    });
    c = false;

    timer = Timer.periodic(const Duration(milliseconds: 1200), (Timer t) {
      if (imageIndex < imagePaths.length * 2) {
        if (imageIndex.isEven) {
          setState(() {
            images.add(Container(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset('assets/images/152.png', scale: 1.3)));
          });
          // 'assets/images/152.png'를 0.2초 동안 보여준 후 제거
          Future.delayed(const Duration(milliseconds: 200), () {
            setState(() {
              images.removeLast();
            });
          });
        } else {
          setState(() {
            images.add(Container(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                imagePaths[imageIndex ~/ 2],
                scale: 1.3,
              ),
            ));
          });
        }
        imageIndex++;
      } else {
        // 모든 이미지가 추가된 후
        timer?.cancel(); // 타이머 정리
        showBottomSheet(context, updateCState); // 바텀 시트 표시
      }
    });
  }

  void updateCState(bool newValue) {
    setState(() {
      c = newValue;
    });
  }

  void showBottomSheet(BuildContext context, Function(bool) updateCState) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
      isDismissible: false,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Container(
              height: height * 0.54,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 40, top: 40, bottom: 40),
                    width: width,
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/23.png',
                      scale: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            a = !a;
                            b = false;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: width * 0.4,
                          height: 60,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.5), // Shadow color
                                  spreadRadius:
                                      5, // Increase spread radius for external shadow
                                  blurRadius:
                                      10, // Adjust blur radius for desired softness
                                  offset: const Offset(
                                      0, 1), // Adjust shadow position
                                ),
                              ],
                              color: a ? ColorList.black : Colors.white,
                              border: Border.all(
                                  width: 1.5,
                                  color: a ? Colors.black : Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            '보유옷을 등록한 경우',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: a ? Colors.white : Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        child: const Text(
                          'VS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            b = !b;
                            a = false;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: width * 0.4,
                          height: 60,
                          decoration: BoxDecoration(
                              color: b ? ColorList.black : Colors.white,
                              border: Border.all(
                                  width: 1.5,
                                  color: b ? Colors.black : Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            textAlign: TextAlign.center,
                            '보유옷을\n등록하지 않은 경우',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: b ? Colors.white : Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const mycloths()),
                      );
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          'TIP 보유 옷을 등록하고 편하게 검색해보세요!',
                          style: TextStyle(fontSize: 12, color: ColorList.grey),
                        ),
                        const Text(
                          '등록하러가기',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black,
                              decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  (a || b)
                      ? InkWell(
                          onTap: () {
                            if (!c) {
                              updateCState(true);
                            }
                            Navigator.pop(context);
                            a
                                ? showPickerModal2(context)
                                : showPickerModal(context);
                          },
                          splashColor: Colors.transparent, // 물결 효과를 투명하게
                          highlightColor: Colors.transparent,
                          child: Container(
                            alignment: Alignment.center,
                            width: width,
                            height: 80,
                            color: ColorList.black,
                            child: const Text(
                              '설계장에게 알려주기',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      : Container(
                          alignment: Alignment.center,
                          width: width,
                          height: 80,
                          color: const Color(0xffE4E4E5),
                          child: const Text(
                            '설계장에게 알려주기',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                ],
              ));
        });
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    controller.removeListener(() {});
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        setState(() {
          c = false;
        });
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                setState(() {
                  c = false;
                });
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          title: const Text(
            '설계장',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            Image.asset(
              'assets/images/18.png',
              scale: 2,
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          width: width,
          height: height,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/19.png',
                    scale: 2.2,
                  ),
                  Image.asset(
                    'assets/images/20.png',
                    scale: 1.3,
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 55),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: images,
                ),
              ),
              c
                  ? Container(
                      padding: const EdgeInsets.only(top: 10),
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        'assets/images/24.png',
                        scale: 2.5,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
