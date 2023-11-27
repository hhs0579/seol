import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/userProvider.dart';

class report extends StatefulWidget {
  const report({super.key});

  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {
  bool a = false;

  int currentIndex = 0; // 현재 인덱스

  void _changeContent(bool forward) {
    setState(() {
      if (forward) {
        currentIndex = (currentIndex + 1) % 2; // 다음 내용
      } else {
        currentIndex = (currentIndex - 1) % 2; // 이전 내용
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Consumer<UserProvider>(
        builder: (context, model, _) => Column(
          children: [
            Container(
              width: width,
              height: 60,
              color: ColorList.black,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        a = !a;
                      });
                    },
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text(
                            '${model.nickname} ',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          const Text(
                            '님의 사이즈',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: ColorList.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '키 ${model.height}cm',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '몸무게 ${model.weight}kg',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '발 ${model.foot}mm',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
            a
                ? Container(
                    width: width,
                    height: 80,
                    decoration: BoxDecoration(
                      color: ColorList.black,
                      boxShadow: const [
                        // 그림자 추가
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                          offset: Offset(0.0, 0.0),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios,
                              color: Colors.white),
                          onPressed: () => _changeContent(false), // 이전 내용
                        ),
                        // 내용 표시
                        Container(
                          child: currentIndex == 0
                              ? Image.asset(
                                  'assets/images/85.png',
                                  fit: BoxFit.cover,
                                  scale: 2.5,
                                )
                              : Image.asset(
                                  'assets/images/86.png',
                                  scale: 2.5,
                                  fit: BoxFit.cover,
                                ),
                        ),

                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios,
                              color: Colors.white),
                          onPressed: () => _changeContent(true), // 다음 내용
                        ),
                      ],
                    ),
                  )
                : Container(),
            const SizedBox(
              height: 30,
            ),
            Image.asset('assets/images/87.png'),
            const SizedBox(
              height: 30,
            ),
            Image.asset('assets/images/88.png')
          ],
        ),
      ),
    );
  }
}
