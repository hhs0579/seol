import 'package:flutter/material.dart';

class login3 extends StatelessWidget {
  const login3({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(40),
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: const Color(0xff7C7C7C),
                      border:
                          Border.all(color: const Color(0xff7C7C7C), width: 1),
                      borderRadius: BorderRadius.circular(100)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: const Color(0xff7C7C7C), width: 1),
                      borderRadius: BorderRadius.circular(100)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: const Color(0xff7C7C7C), width: 1),
                      borderRadius: BorderRadius.circular(100)),
                )
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '앱에서 사용할',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    '별명을 정해주세요',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  )
                ],
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                
              ),
            )
          ]),
        ),
      ),
    );
  }
}
