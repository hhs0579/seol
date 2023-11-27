import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/userProvider.dart';
import '7.dart';

class login6 extends StatefulWidget {
  const login6({super.key});

  @override
  State<login6> createState() => _login6State();
}

class _login6State extends State<login6> {
  List<int> selectedPhotos = [];
  @override
  Widget build(BuildContext context) {
    bool isButtonEnabled = selectedPhotos.length >= 3;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // 이미지 데이터 (임시 데이터로 대체)
    List<String> photoPaths = [
      'assets/images/ms1.png',
      'assets/images/ms2.png',
      'assets/images/ms3.png',
      'assets/images/ms4.png',
      'assets/images/ms5.png',
      'assets/images/ms6.png',
      // ... 여기에 나머지 이미지 경로를 추가 ...
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: width,
        height: height,
        child: Consumer<UserProvider>(
          builder: (context, model, _) => Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${model.nickname}님이',
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 26),
                      ),
                      const Row(
                        children: [
                          Text(
                            '요즘 주로 입는 스타일',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          ),
                          Text(
                            '은?',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text('가장 유사한 것을 '),
                          Text(
                            '3개 이상 ',
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text('골라주세요!')
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset('assets/images/6.png')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.5, // 이미지 비율 조정
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: photoPaths.length,
                    itemBuilder: (context, index) {
                      bool isSelected = selectedPhotos.contains(index);
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              selectedPhotos.remove(index);
                            } else {
                              selectedPhotos.add(index);
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color:
                                  isSelected ? Colors.blue : Colors.transparent,
                              width: isSelected ? 3 : 0,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              photoPaths[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 80,
                child: ElevatedButton(
                  onPressed: isButtonEnabled
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const login7(), // 여기에 새로운 페이지 위젯을 넣으세요.
                            ),
                          );
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isButtonEnabled
                        ? Colors.blue
                        : Colors.grey, // 버튼 활성화/비활성화 색상
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // No rounded corners
                    ),
                  ),
                  child: const Text(
                    '선택 완료',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
