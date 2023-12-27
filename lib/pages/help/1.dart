import 'package:flutter/material.dart';
import 'package:seol/pages/help/2.dart';
import 'package:seol/pages/help/3.dart';
import 'package:seol/pages/help/4.dart';
import 'package:seol/pages/help/5.dart';
import 'package:seol/pages/help/6.dart';

class help extends StatelessWidget {
  const help({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: const Text(
          '도움말',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Container(
        color: Colors.white,
        width: width,
        height: height,
        child: Column(
          children: [
            Container(
              width: width,
              padding: const EdgeInsets.all(20),
              height: height * 0.37,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, -1), // changes position of shadow
                ),
              ]),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const help2()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      width: width,
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: const Text(
                        '고객센터',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10, top: 10),
                    width: width,
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: const Text(
                      '공지사항',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const help6()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      width: width,
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: const Text(
                        '버전 정보',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const help5()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      width: width,
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: const Text(
                        '개인정보 처리방침',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const help4()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      width: width,
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: const Text(
                        '서비스 이용 약관',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const help3()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      width: width,
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: const Text(
                        '회원 탈퇴',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: height * 0.5,
                child: Image.asset(
                  'assets/images/185.png',
                  scale: 2,
                ))
          ],
        ),
      ),
    );
  }
}
