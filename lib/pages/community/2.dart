import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/%08bottomsheet.dart';

class community2 extends StatelessWidget {
  const community2({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
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
                          '스타일별 코디 팁',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Container(),
                    ],
                  )),
              Container(
                child: Image.asset('assets/images/79.png'),
              ),
              Container(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  showCustomDialog2(context);
                },
                child: Container(
                  child: Image.asset('assets/images/80.png'),
                ),
              ),
              Container(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
