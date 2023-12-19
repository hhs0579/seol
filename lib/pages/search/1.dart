import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/drawer.dart';
import 'package:seol/widget/market.dart';

import '../../widget/product.dart';

class search1 extends StatefulWidget {
  const search1({super.key});

  @override
  State<search1> createState() => _search1State();
}

class _search1State extends State<search1> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/11.png',
                  scale: 3,
                ),
                Image.asset(
                  'assets/images/12.png',
                  scale: 2,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(width: width, height: 45, child: _buildStackedTopButtons()),
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
              children: const [ProductPage(), Market()],
            ),
          ),
        ],
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
        child: _buildTopButton("가게", 1),
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
              _currentPage == page ? ColorList.brown : const Color(0xffECECEC),
          borderRadius: borderRadius,
        ),
        child: Padding(
          padding: textPadding,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: _currentPage == page ? Colors.white : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
