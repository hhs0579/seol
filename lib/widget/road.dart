import 'package:flutter/material.dart';

import '../utils/color.dart';

class road extends StatefulWidget {
  const road({super.key});

  @override
  State<road> createState() => _roadState();
}

class _roadState extends State<road> {
  bool a = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return a
        ? Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20),
                  child: Image.asset(
                    'assets/images/110.png',
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: width,
                    height: 80,
                    color: ColorList.black,
                    child: const Text(
                      '작성완료',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          )
        : Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                setState(() {
                  a = !a;
                });
              },
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/images/109.png'),
                ],
              ),
            ));
  }
}
