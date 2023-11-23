import 'package:flutter/material.dart';

import '../../utils/color.dart';

class community3 extends StatelessWidget {
  const community3({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: ColorList.grey))),
              width: width,
              padding: const EdgeInsets.only(
                top: 30,
                left: 20,
              ),
              child: Image.asset(
                'assets/images/78.png',
                scale: 2,
                alignment: Alignment.centerLeft,
              ),
            ),
            Container(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                width: width,
                height: 60,
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
                    Container(
                      padding: const EdgeInsets.only(right: 60),
                      child: const Text(
                        '설계 보드',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Container(),
                  ],
                )),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('assets/images/82.png'),
                    ),
                    Container(
                      child: Image.asset('assets/images/83.png'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
