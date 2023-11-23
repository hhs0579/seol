import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';

class mysize2 extends StatefulWidget {
  const mysize2({super.key});

  @override
  State<mysize2> createState() => _mysize2State();
}

class _mysize2State extends State<mysize2> {
  bool a = false;
  bool b = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            )),
                        const Text(
                          '사이즈 변경',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        Container(
                          width: 50,
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/117.png',
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
                      child: a
                          ? Image.asset(
                              'assets/images/120.png',
                              scale: 2,
                            )
                          : Image.asset(
                              'assets/images/118.png',
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
                      child: b
                          ? Image.asset(
                              'assets/images/121.png',
                              scale: 2,
                            )
                          : Image.asset(
                              'assets/images/119.png',
                              scale: 2,
                            ),
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: width,
              height: 80,
              color: ColorList.black,
              alignment: Alignment.center,
              child: const Text(
                '수정완료',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
