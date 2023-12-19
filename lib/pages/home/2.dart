import 'package:flutter/material.dart';
import 'package:seol/pages/community/2.dart';
import 'package:seol/pages/mypage/2.dart';
import 'package:seol/pages/mypage/3.dart';

class home2 extends StatelessWidget {
  const home2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Icon(Icons.notifications_none_outlined, size: 30),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const community2(), // 여기에 새로운 페이지 위젯을 넣으세요.
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/129.png',
                    scale: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: InkWell(
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
                    'assets/images/130.png',
                    scale: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/131.png',
                    scale: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/132.png',
                    scale: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: InkWell(
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
                    'assets/images/133.png',
                    scale: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/134.png',
                    scale: 2,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
