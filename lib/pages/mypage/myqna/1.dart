import 'package:flutter/material.dart';

class Myqna extends StatefulWidget {
  const Myqna({super.key});

  @override
  State<Myqna> createState() => _MyqnaState();
}

class _MyqnaState extends State<Myqna> {
  bool a = false;
  bool b = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Text(
          '나의 문의',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      a = !a;
                    });
                  },
                  child: a
                      ? Image.asset('assets/images/149.png')
                      : Image.asset('assets/images/148.png'),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      b = !b;
                    });
                  },
                  child: b
                      ? Image.asset('assets/images/151.png')
                      : Image.asset('assets/images/150.png'),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      a = !a;
                    });
                  },
                  child: a
                      ? Image.asset('assets/images/149.png')
                      : Image.asset('assets/images/148.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
