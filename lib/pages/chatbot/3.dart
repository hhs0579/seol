import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seol/bottom.dart';
import 'package:seol/pages/search/3.dart';
import 'package:seol/utils/color.dart';

import '../../widget/dialog.dart';

class chatbot3 extends StatefulWidget {
  const chatbot3({super.key});

  @override
  State<chatbot3> createState() => _chatbot3State();
}

class _chatbot3State extends State<chatbot3> {
  bool a = false;
  List<Widget> images = [];
  Timer? timer;
  int imageIndex = 0;
  final List<String> imagePaths = [
    'assets/images/30.png',
    'assets/images/31.png',
    // 여기에 더 많은 이미지 경로를 추가할 수 있습니다.
  ];
  @override
  void initState() {
    super.initState();

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
          Widget imageWidget = Image.asset(
            imagePaths[imageIndex ~/ 2],
            scale: 1.3,
          );

          // 'assets/images/31.png'일 경우에만 앞에 SizedBox 추가
          if (imagePaths[imageIndex ~/ 2] == 'assets/images/31.png') {
            imageWidget = Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 50), // 여기에서 추가적인 공간을 제공
                imageWidget,
              ],
            );
          } else {
            imageWidget = Row(
              children: [imageWidget],
            );
          }

          setState(() {
            images.add(Container(
              padding: const EdgeInsets.only(top: 10),
              child: imageWidget,
            ));
          });
        }
        imageIndex++;
      } else {
        // 모든 이미지가 추가된 후
        timer?.cancel(); // 타이머 정리
      }
    });
  }

  void toggleBookmark() {
    setState(() {
      a = !a;
    });
  }

  void Customalert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              content: Container(
                height: height * 0.68,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Bottom(
                                  showBottomSheet:
                                      true), // 여기에 새로운 페이지 위젯을 넣으세요.
                            ),
                          );
                        },
                        splashColor: Colors.transparent, // 물결 효과를 투명하게
                        highlightColor: Colors.transparent,
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.topRight,
                            child: const Icon(Icons.close))),
                    SizedBox(
                      height: height * 0.55,
                      child: Image.asset(
                        'assets/images/139.png',
                        scale: 2,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                a = !a;
                              });
                            },
                            child: SizedBox(
                              width: 20,
                              height: 40,
                              child: Icon(
                                  a
                                      ? Icons.bookmark
                                      : Icons.bookmark_border_outlined,
                                  size: 25,
                                  color: a ? ColorList.primary : Colors.black),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Search3()),
                              );
                            },
                            child: const Row(
                              children: [
                                Text(
                                  '상품 보러가기',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
              ),
              contentPadding: EdgeInsets.zero, // 내부 여백 제거
              insetPadding: const EdgeInsets.all(10), // AlertDialog 외부 여백 조정
              // AlertDialog의 다른 속성들...
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
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
          '설계장',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset(
              'assets/images/18.png',
              scale: 2,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/images/29.png',
                  scale: 1.3,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Customalert();
                },
                splashColor: Colors.transparent, // 물결 효과를 투명하게
                highlightColor: Colors.transparent,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: images,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
