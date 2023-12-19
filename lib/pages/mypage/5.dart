import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';

class mypage5 extends StatefulWidget {
  const mypage5({super.key});

  @override
  State<mypage5> createState() => _mypage5State();
}

class _mypage5State extends State<mypage5> {
  TextEditingController nicknameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nicknameController.addListener(_updateButtonState);
  }

  void _updateButtonState() {
    setState(() {
      // 이 함수는 텍스트 필드의 값이 변경될 때마다 호출됩니다.
    });
  }

  @override
  void dispose() {
    nicknameController.removeListener(_updateButtonState);
    nicknameController.dispose();
    super.dispose();
  }

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
          children: [
            Container(
              alignment: Alignment.center,
              width: width,
              height: 100,
              padding: const EdgeInsets.only(
                  top: 40, bottom: 20, left: 20, right: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
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
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      )),
                  const Text(
                    '나의 정보',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    width: 40,
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(40),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      '앱에서 사용할',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '별명을 정해주세요',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: width * 0.6,
                                child: TextField(
                                  controller: nicknameController,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                  decoration: const InputDecoration(
                                    hintText: '낙지곱창새우',
                                    hintStyle: TextStyle(color: Colors.black),
                                    border: InputBorder.none,
                                  ),
                                )),
                            const Text('님')
                          ],
                        ),
                        Container(
                          width: width,
                          height: 1,
                          color: ColorList.grey,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '설계장에서 사용하고 싶은 이름으로',
                                style: TextStyle(
                                    color: ColorList.grey, fontSize: 12),
                              ),
                              Text(
                                '자유롭게 정해주세요',
                                style: TextStyle(
                                    color: ColorList.grey, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
            const Spacer(),
            InkWell(
              onTap: nicknameController.text.isNotEmpty
                  ? () {
                      Navigator.pop(context);
                    }
                  : null,
              child: Container(
                alignment: Alignment.center,
                width: width,
                height: 80,
                color: nicknameController.text.isNotEmpty
                    ? ColorList.black
                    : Colors.grey, // 텍스트가 있으면 검은색, 없으면 회색
                child: const Text(
                  '작성완료',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
