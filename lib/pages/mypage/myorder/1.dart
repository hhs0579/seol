import 'package:flutter/material.dart';
import 'package:seol/widget/%08bottomsheet.dart';

class MyOder extends StatelessWidget {
  const MyOder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            '나의 주문',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    ordercancel(context);
                  },
                  child: Image.asset('assets/images/160.png')),
              InkWell(
                  onTap: () {
                    orderchange(context);
                  },
                  child: Image.asset('assets/images/162.png'))
            ],
          )),
    );
  }
}
