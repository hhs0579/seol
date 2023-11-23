import 'package:flutter/material.dart';

import '../utils/color.dart';

class likemarket extends StatelessWidget {
  const likemarket({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              width: width,
              height: 60,
              color: ColorList.black,
              child: Image.asset(
                'assets/images/89.png',
                scale: 2,
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset('assets/images/90.png'),
          )
        ],
      ),
    );
  }
}
