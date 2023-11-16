import 'package:flutter/material.dart';

class Search2 extends StatelessWidget {
  const Search2({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          alignment: Alignment.center,
          padding:
              const EdgeInsets.only(top: 20, bottom: 40, left: 20, right: 20),
          height: height,
          width: width,
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/images/46.png'))),
    );
  }
}
