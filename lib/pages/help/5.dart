import 'package:flutter/material.dart';

class help5 extends StatelessWidget {
  const help5({super.key});

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
        height: height,
        width: width,
        padding: const EdgeInsets.all(20),
        child: Image.asset(
          'assets/images/192.png',
          scale: 2,
        ),
      ),
    );
  }
}
