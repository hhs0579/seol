import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/userProvider.dart';
import '9.dart';

class login8 extends StatefulWidget {
  const login8({super.key});

  @override
  State<login8> createState() => _login8State();
}

class _login8State extends State<login8> {
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  bool f = false;
  bool g = false;
  bool h = false;

  // 선택된 스타일의 개수를 반환하는 함수

  int get selectedCount {
    List<bool> selections = [a, b, c, d, e, f, g, h];
    return selections.where((selected) => selected).length;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool isButtonEnabled = selectedCount >= 2;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<UserProvider>(
        builder: (context, model, _) => SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 80, left: 20),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${model.nickname}님이 좋아하는',
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 26),
                      ),
                      const Text(
                        '스타일을 표현하자면?',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 26),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: const Text(
                    '2개 이상 골라주세요!',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('assets/images/8.png'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                  child: Image.asset('assets/images/9.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          a = !a;
                        });
                      },
                      splashColor: Colors.transparent, // 물결 효과를 투명하게
                      highlightColor: Colors.transparent,
                      child: Container(
                        width: width * 0.35,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 6,
                                offset: const Offset(0, 4),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(30),
                            color: !a ? Colors.white : Colors.blue),
                        child: Text(
                          '자연스러운',
                          style: TextStyle(
                              color: !a ? Colors.blue : Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          b = !b;
                        });
                      },
                      splashColor: Colors.transparent, // 물결 효과를 투명하게
                      highlightColor: Colors.transparent,
                      child: Container(
                        width: width * 0.35,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 6,
                                offset: const Offset(0, 4),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(30),
                            color: !b ? Colors.white : Colors.blue),
                        child: Text(
                          '트렌디한',
                          style: TextStyle(
                              color: !b ? Colors.blue : Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      c = !c;
                    });
                  },
                  splashColor: Colors.transparent, // 물결 효과를 투명하게
                  highlightColor: Colors.transparent,
                  child: Container(
                    width: width * 0.4,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 6,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: !c ? Colors.white : Colors.blue),
                    child: Text(
                      '활동성 있는',
                      style: TextStyle(
                          color: !c ? Colors.blue : Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            d = !d;
                          });
                        },
                        splashColor: Colors.transparent, // 물결 효과를 투명하게
                        highlightColor: Colors.transparent,
                        child: Container(
                          width: width * 0.35,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 6,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30),
                              color: !d ? Colors.white : Colors.blue),
                          child: Text(
                            '고급스러운',
                            style: TextStyle(
                                color: !d ? Colors.blue : Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            e = !e;
                          });
                        },
                        splashColor: Colors.transparent, // 물결 효과를 투명하게
                        highlightColor: Colors.transparent,
                        child: Container(
                          width: width * 0.35,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 6,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30),
                              color: !e ? Colors.white : Colors.blue),
                          child: Text(
                            '단정한',
                            style: TextStyle(
                                color: !e ? Colors.blue : Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                InkWell(
                  onTap: () {
                    setState(() {
                      f = !f;
                    });
                  },
                  splashColor: Colors.transparent, // 물결 효과를 투명하게
                  highlightColor: Colors.transparent,
                  child: Container(
                    width: width * 0.4,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 6,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        color: !f ? Colors.white : Colors.blue),
                    child: Text(
                      '유행을 타지않는',
                      style: TextStyle(
                          color: !f ? Colors.blue : Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          g = !g;
                        });
                      },
                      splashColor: Colors.transparent, // 물결 효과를 투명하게
                      highlightColor: Colors.transparent,
                      child: Container(
                        width: width * 0.35,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 6,
                                offset: const Offset(0, 4),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(30),
                            color: !g ? Colors.white : Colors.blue),
                        child: Text(
                          '귀여운',
                          style: TextStyle(
                              color: !g ? Colors.blue : Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          h = !h;
                        });
                      },
                      splashColor: Colors.transparent, // 물결 효과를 투명하게
                      highlightColor: Colors.transparent,
                      child: Container(
                        width: width * 0.35,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 6,
                                offset: const Offset(0, 4),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(30),
                            color: !h ? Colors.white : Colors.blue),
                        child: Text(
                          '독특한',
                          style: TextStyle(
                              color: !h ? Colors.blue : Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                // '선택 완료' 버튼
                // 버튼을 화면 하단으로 밀기
                isButtonEnabled
                    ? InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const login9(), // 여기에 새로운 페이지 위젯을 넣으세요.
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
      ),
    );
  }
}
