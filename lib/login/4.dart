import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seol/login/5.dart';

import '../widget/userProvider.dart';

class login4 extends StatelessWidget {
  const login4({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
            )),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        width: width,
        height: height,
        child: Consumer<UserProvider>(
          builder: (context, model, _) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Row(
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xff7C7C7C), width: 1),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          color: const Color(0xff7C7C7C),
                          border: Border.all(
                              color: const Color(0xff7C7C7C), width: 1),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: const Color(0xff7C7C7C), width: 1),
                          borderRadius: BorderRadius.circular(100)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        '성별을 알려주세요',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.11,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          model.isMale
                              ? InkWell(
                                  onTap: () {
                                    model.isMale = !model.isMale;
                                  },
                                  splashColor:
                                      Colors.transparent, // 물결 효과를 투명하게
                                  highlightColor: Colors.transparent,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: width * 0.37,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                30),
                                        border: Border.all(
                                            color: Colors.blue, width: 2)),
                                    child: const Text(
                                      '남자',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    model.isMale = !model.isMale;
                                  },
                                  splashColor:
                                      Colors.transparent, // 물결 효과를 투명하게
                                  highlightColor: Colors.transparent,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: width * 0.37,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                30),
                                        border: Border.all(
                                            color: Colors.grey, width: 2)),
                                    child: const Text(
                                      '남자',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                          model.isFemale
                              ? InkWell(
                                  onTap: () {
                                    model.isFemale = !model.isFemale;
                                  },
                                  splashColor:
                                      Colors.transparent, // 물결 효과를 투명하게
                                  highlightColor: Colors.transparent,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: width * 0.37,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                30),
                                        border: Border.all(
                                            color: Colors.blue, width: 2)),
                                    child: const Text(
                                      '여자',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    model.isFemale = !model.isFemale;
                                  },
                                  splashColor:
                                      Colors.transparent, // 물결 효과를 투명하게
                                  highlightColor: Colors.transparent,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: width * 0.37,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                30),
                                        border: Border.all(
                                            color: Colors.grey, width: 2)),
                                    child: const Text(
                                      '여자',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              (model.isFemale || model.isMale)
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const login5(), // 여기에 새로운 페이지 위젯을 넣으세요.
                          ),
                        );
                      },
                      splashColor: Colors.transparent, // 물결 효과를 투명하게
                      highlightColor: Colors.transparent,
                      child: Container(
                        alignment: Alignment.center,
                        width: width,
                        height: 80,
                        color: Colors.blue,
                        child: const Text(
                          '입력완료',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  : Container(
                      alignment: Alignment.center,
                      width: width,
                      height: 80,
                      color: const Color(0xffE4E4E5),
                      child: const Text(
                        '입력완료',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
