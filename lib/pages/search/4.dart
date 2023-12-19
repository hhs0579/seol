import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/marketinfo.dart';

import '../../widget/marketPro.dart';

class Search4 extends StatefulWidget {
  const Search4({super.key});

  @override
  State<Search4> createState() => _Search4State();
}

class _Search4State extends State<Search4> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  bool a = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          '에스티엠씨',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
        ),
        actions: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              setState(() {
                a = !a;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              child: a
                  ? Image.asset(
                      'assets/images/64.png',
                      scale: 2,
                    )
                  : Image.asset(
                      'assets/images/63.png',
                      scale: 2,
                    ),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        width: width,
        height: height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/images/61.png'),
                  Container(
                    padding: const EdgeInsets.all(20),
                    color: ColorList.black,
                    child: Image.asset('assets/images/62.png'),
                  ),
                  Container(
                      color: ColorList.black,
                      width: width,
                      height: 45,
                      child: _buildStackedTopButtons()),
                  SizedBox(
                    height: height * 1.5,
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: const [MarketProduct(), MarketInfo()],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 16, // 하단에서의 간격
              right: 16, // 우측에서의 간격
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999), // 원형 모양
                  color: Colors.black,
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                ),
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
        child: _buildTopButton("상품", 0),
      ),
      Positioned(
        left: width * 0.6 - overlap, // 첫 번째 버튼과 겹치게 위치 조정
        child: _buildTopButton("가게 정보", 1),
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
    Alignment alignment =
        (page == 0) ? Alignment.centerLeft : Alignment.centerRight;

    // 텍스트에 여백을 주기 위한 EdgeInsets 설정
    EdgeInsets textPadding = (page == 0)
        ? const EdgeInsets.only(left: 20.0)
        : const EdgeInsets.only(right: 20.0);

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
              color: _currentPage == page ? ColorList.black : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
