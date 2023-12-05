import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seol/pages/chatbot/3.dart';
import 'package:seol/utils/color.dart';

void showPickerModal(BuildContext context) {
  final PageController controller = PageController();
  int currentPage = 0;

  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(builder: (context, setState) {
        return Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      if (currentPage > 0) {
                        controller.animateToPage(
                          currentPage - 1,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                        setState(() {
                          currentPage--;
                        });
                      }
                    },
                  ),
                  Expanded(
                    child: Center(
                      child: Image.asset(
                          'assets/images/${25 + currentPage}.png',
                          scale: 2),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      if (currentPage < 3) {
                        controller.animateToPage(
                          currentPage + 1,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                        setState(() {
                          currentPage++;
                        });
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 200,
                child: PageView(
                  controller: controller,
                  onPageChanged: (int page) {
                    setState(() {
                      currentPage = page;
                    });
                  },
                  children: [
                    buildPickersPage([
                      ['상의', '하의', '신발', '가방'],
                      ['면바지', '슬랙스', '반바지', '청바지'],
                      []
                    ]),
                    buildPickersPage([
                      ['상의', '하의', '신발', '가방'],
                      ['면바지', '슬랙스', '반바지', '청바지'],
                      []
                    ]),
                    buildPickersPage([
                      ['상의', '하의', '신발', '가방'],
                      ['면바지', '슬랙스', '반바지', '청바지'],
                      []
                    ]),
                    buildPickersPage([
                      ['상의', '하의', '신발', '가방'],
                      ['면바지', '슬랙스', '반바지', '청바지'],
                      []
                    ]),
                  ],
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const chatbot3(), // 여기에 새로운 페이지 위젯을 넣으세요.
                    ),
                  );
                },
                splashColor: Colors.transparent, // 물결 효과를 투명하게
                highlightColor: Colors.transparent,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  color: ColorList.black,
                  child: const Text(
                    '선택완료',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        );
      });
    },
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
    ),
    isScrollControlled: true,
  );
}

void showPickerModal2(BuildContext context) {
  final PageController controller = PageController();
  int currentPage = 0;

  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(builder: (context, setState) {
        return Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      if (currentPage > 0) {
                        controller.animateToPage(
                          currentPage - 1,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                        setState(() {
                          currentPage--;
                        });
                      }
                    },
                  ),
                  Expanded(
                    child: Center(
                      child: Image.asset(
                          'assets/images/${25 + currentPage}.png',
                          scale: 2),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      if (currentPage < 3) {
                        controller.animateToPage(
                          currentPage + 1,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeIn,
                        );
                        setState(() {
                          currentPage++;
                        });
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width * 0.9,
                child: PageView(
                  controller: controller,
                  onPageChanged: (int page) {
                    setState(() {
                      currentPage = page;
                    });
                  },
                  children: [
                    Image.asset(
                      'assets/images/138.png',
                    ),
                    Image.asset('assets/images/138.png'),
                    Image.asset('assets/images/138.png'),
                    Image.asset('assets/images/138.png'),
                  ],
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const chatbot3(), // 여기에 새로운 페이지 위젯을 넣으세요.
                    ),
                  );
                },
                splashColor: Colors.transparent, // 물결 효과를 투명하게
                highlightColor: Colors.transparent,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  color: ColorList.black,
                  child: const Text(
                    '선택완료',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        );
      });
    },
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
    ),
    isScrollControlled: true,
  );
}

Widget buildPickersPage(List<List<String>> items) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(items.length * 2 - 1, (index) {
        // 인덱스가 홀수일 때는 마진 추가
        if (index % 2 == 1) {
          return const SizedBox(width: 10); // 마진 설정
        }

        int itemIndex = index ~/ 2;

        // 각 페이지의 세 번째 컬럼에 색상 선택기 추가
        if (itemIndex == 2) {
          return Expanded(child: buildColorPicker()); // 색상 선택기를 반환
        } else {
          return Expanded(child: buildPicker(items[itemIndex]));
        }
      }),
    ),
  );
}

Widget buildColorPicker() {
  List<Color> colors = [
    const Color(0xffB2B2B2),
    const Color(0xffB2B9CC),
    const Color(0x000000ff),
    const Color(0xff1946BB),
    const Color(0xffC4E6FF),
    const Color(0xffB2DEC7),
  ]; // 색상 리스트

  return Container(
    width: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoPicker(
        itemExtent: 32.0,
        onSelectedItemChanged: (int index) {
          // 선택된 색상에 대한 처리
        },
        children: colors
            .map((color) => Center(
                  child: Container(
                    width: 50,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                      color: color,
                    ),
                  ),
                ))
            .toList(),
      ),
    ),
  );
}

Widget buildPicker(List<String> items) {
  return Container(
    width: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoPicker(
        itemExtent: 32.0,
        diameterRatio: 1.0, // 피커의 직경 비율을 조정하여 더 넓게 만듭니다.
        onSelectedItemChanged: (int index) {
          // 선택된 항목에 대한 처리
        },
        children: items
            .map((item) => Center(
                    child: Text(
                  item,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                )))
            .toList(),
      ),
    ),
  );
}
