import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seol/login/3.dart';

import 'package:seol/model/logincheckmodel.dart';
import 'package:seol/widget/roundcheck.dart';

import '../utils/color.dart';

class login2 extends StatefulWidget {
  const login2({super.key});

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100, left: 30),
              alignment: Alignment.topLeft,
              child: Image.asset(
                'assets/images/2.png',
                scale: 2,
              ),
            ),
            Consumer<AgreementModel>(
              builder: (context, model, _) => Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Row(
                      children: [
                        RoundCheckbox(
                            value: model.isChecked1,
                            onChanged: (newValue) {
                              model.toggleAll();
                            }),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '약관 전체 동의',
                          style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // 그림자 색상 및 투명도
                          spreadRadius: 0.9, // 그림자의 넓이 조절
                          blurRadius: 3.0, // 퍼지는 정도
                          offset: const Offset(0, 2), // 수평 및 수직 오프셋
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RoundCheckbox(
                                value: model.isChecked2,
                                onChanged: (newValue) {
                                  model.toggleCheck2();
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '설계장 이용약관 동의(필수)',
                              style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 20,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RoundCheckbox(
                                value: model.isChecked3,
                                onChanged: (newValue) {
                                  model.toggleCheck3();
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '개인정보 수집 및 이용동의(필수)',
                              style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 20,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RoundCheckbox(
                                value: model.isChecked4,
                                onChanged: (newValue) {
                                  model.toggleCheck4();
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '위치 기반 서비스 이용동의(필수)',
                              style: TextStyle(
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 20,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RoundCheckbox(
                                value: model.isChecked5,
                                onChanged: (newValue) {
                                  model.toggleCheck5();
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: const [
                                Text(
                                  'E-mail 및 SMS 광고성 정보 수신동의(선택)',
                                  style: TextStyle(
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  '설계장의 다양한 프로모션 및 이벤트 정보를 안내해드려요!',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  (model.isChecked2 &&
                          model.isChecked3 &&
                          model.isChecked4 == true)
                      ? InkWell(
                          splashColor: Colors.transparent, // 물결 효과를 투명하게
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const login3(), // 여기에 새로운 페이지 위젯을 넣으세요.
                              ),
                            );
                          },
                          child: Container(
                            width: width,
                            height: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ColorList.deepgrey,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.1), // 그림자 색상 및 투명도
                                  spreadRadius: 0.5, // 그림자의 넓이 조절
                                  blurRadius: 3.0, // 퍼지는 정도
                                  offset: const Offset(0, -5), // 수평 및 수직 오프셋
                                ),
                              ],
                            ),
                            child: const Text(
                              '선택완료',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        )
                      : Container(
                          width: width,
                          height: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorList.grey,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.1), // 그림자 색상 및 투명도
                                spreadRadius: 0.4, // 그림자의 넓이 조절
                                blurRadius: 3.0, // 퍼지는 정도
                                offset: const Offset(0, -5), // 수평 및 수직 오프셋
                              ),
                            ],
                          ),
                          child: const Text(
                            '선택완료',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
