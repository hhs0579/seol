import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/road.dart';

class mypage6 extends StatefulWidget {
  const mypage6({super.key});

  @override
  State<mypage6> createState() => _mypage6State();
}

class _mypage6State extends State<mypage6> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  bool a = false;
  bool c = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
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
                    '주소 검색',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    width: 40,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  width: width * 0.7,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: ColorList.grey)),
                  child: TextField(
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintText: '도로명,지번,건물병을 입력해주세요',
                      hintStyle: TextStyle(fontSize: 14, color: ColorList.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      c = !c;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      '검색',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              alignment: Alignment.centerLeft,
              child: Text(
                '예시 : 도로명(반포대로 58), 건물명(독립기념관),지번(삼성동 25)',
                style: TextStyle(color: ColorList.primary, fontSize: 10),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                color: Colors.white,
                width: width,
                height: 45,
                child: _buildStackedTopButtons()),
            Expanded(
              // PageView for swiping pages
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  road(
                    b: c,
                  ),
                  road(b: c)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStackedTopButtons() {
    double width = MediaQuery.of(context).size.width;
    double overlap = width * 0.12; // 버튼이 겹치는 정도를 조절하는 값

    List<Widget> buttons = [
      Positioned(
        left: 0,
        child: _buildTopButton("도로명주소", 0),
      ),
      Positioned(
        left: width * 0.6 - overlap, // 첫 번째 버튼과 겹치게 위치 조정
        child: _buildTopButton("지번주소", 1),
      ),
    ];

    // 선택된 버튼을 마지막에 렌더링하여 앞으로 오도록 함
    Widget selectedButton = buttons.removeAt(_currentPage);
    buttons.add(selectedButton);

    return SizedBox(
      width: width,
      height: 55,
      child: Stack(
        children: buttons,
      ),
    );
  }

  Widget _buildTopButton(String text, int page) {
    double width = MediaQuery.of(context).size.width;

    // 각 버튼에 대한 BorderRadius 설정
    BorderRadius borderRadius = (page == 0)
        ? const BorderRadius.only(topRight: Radius.circular(80))
        : const BorderRadius.only(topLeft: Radius.circular(80));

    // 각 버튼의 텍스트 정렬 설정
    Alignment alignment = (page == 0) ? Alignment.center : Alignment.center;

    // 텍스트에 여백을 주기 위한 EdgeInsets 설정
    EdgeInsets textPadding = (page == 0)
        ? const EdgeInsets.only(right: 20.0)
        : const EdgeInsets.only(left: 20.0);

    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        _pageController.animateToPage(
          page,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
      child: Container(
        alignment: alignment,
        width: width * 0.53,
        height: 55,
        decoration: BoxDecoration(
          color:
              _currentPage == page ? ColorList.white : const Color(0xffECECEC),
          borderRadius: borderRadius,
        ),
        child: Padding(
          padding: textPadding,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: _currentPage == page ? Colors.black : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
