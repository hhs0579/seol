import 'package:flutter/material.dart';

class help6 extends StatelessWidget {
  const help6({super.key});

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
        title: Image.asset(
          'assets/images/190.png',
          scale: 2,
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        height: height,
        width: width,
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.only(top: height * 0.1),
        child: Image.asset(
          'assets/images/193.png',
          scale: 2,
        ),
      ),
    );
  }
}
