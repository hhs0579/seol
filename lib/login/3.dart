import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seol/login/4.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/userProvider.dart';

class login3 extends StatelessWidget {
  const login3({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Consumer<UserProvider>(
          builder: (context, model, _) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(40),
                  child: Row(
                    children: [
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
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '앱에서 사용할',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              '별명을 정해주세요',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: width * 0.6,
                                child: TextField(
                                  controller: controller,
                                  onChanged: (value) {
                                    model.validateNickname(value);
                                    model.validateNickname2(value);
                                    model.nickname = value;
                                  },
                                  decoration: const InputDecoration(
                                    hintText: '설계장',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              model.isNicknameValid
                                  ? Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: const Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 20,
                                      ))
                                  : Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 20,
                                      ))
                            ],
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: ColorList.grey,
                          )
                        ],
                      ),
                      if (!model.isNicknameLengthValid)
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(top: 30),
                          child: const Text(
                            '2글자 이상 작성하세요.',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      // 길이 검사는 통과했지만, 문자 검사가 실패했을 때 메시지
                      if (model.isNicknameLengthValid &&
                          !model.isNicknameCharactersValid)
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(top: 30),
                          child: const Text(
                            '사용할 수 없는 별명이에요.',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      if (model.isNicknameLengthValid &&
                          model.isNicknameCharactersValid)
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(top: 30),
                          child: const Text(
                            '좋은 이름이군요. 사용 가능해요',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                    ],
                  ),
                ),
                (model.isNicknameLengthValid && model.isNicknameCharactersValid)
                    ? InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const login4(), // 여기에 새로운 페이지 위젯을 넣으세요.
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
              ]),
        ),
      ),
    );
  }
}
