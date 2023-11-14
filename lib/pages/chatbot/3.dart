import 'dart:async';

import 'package:flutter/material.dart';

class chatbot3 extends StatefulWidget {
  const chatbot3({super.key});

  @override
  State<chatbot3> createState() => _chatbot3State();
}

class _chatbot3State extends State<chatbot3> {
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

    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      if (imageIndex < imagePaths.length) {
        setState(() {
          images.add(Image.asset(
            imagePaths[imageIndex],
            scale: 2.5,
          ));
          imageIndex++;
        });
      } else {
        // 이미지가 모두 추가된 후
        timer?.cancel(); // 타이머 정리
      }
    });
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
          Image.asset(
            'assets/images/18.png',
            scale: 2,
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
                  scale: 2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: images,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
