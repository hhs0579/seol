import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:seol/pages/mypage/mysize/2.dart';

class mysize extends StatefulWidget {
  const mysize({super.key});

  @override
  State<mysize> createState() => _mysizeState();
}

class _mysizeState extends State<mysize> {
  bool a = false;
  bool b = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
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
                        '나의 사이즈',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const mysize2(), // 여기에 새로운 페이지 위젯을 넣으세요.
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/111.png',
                      scale: 2,
                    ),
                  )
                ],
              ),
            ),
            //ㅎ
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                'assets/images/112.png',
                scale: 2,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  a = !a;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                child: a
                    ? Image.asset(
                        'assets/images/115.png',
                        scale: 2,
                      )
                    : Image.asset(
                        'assets/images/113.png',
                        scale: 2,
                      ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  b = !b;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                child: b
                    ? Image.asset(
                        'assets/images/116.png',
                        scale: 2,
                      )
                    : Image.asset(
                        'assets/images/114.png',
                        scale: 2,
                      ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
