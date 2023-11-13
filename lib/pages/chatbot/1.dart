import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seol/pages/chatbot/2.dart';
import 'package:seol/utils/color.dart';

import '../../widget/userProvider.dart';

class chatbot1 extends StatefulWidget {
  const chatbot1({super.key});

  @override
  State<chatbot1> createState() => _chatbot1State();
}

class _chatbot1State extends State<chatbot1> {
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
      body: Container(
        color: ColorList.blue,
        child: Consumer<UserProvider>(
          builder: (context, model, _) => Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              '마이페이지',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${model.nickname}님',
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Text(
                              '반가워요!',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 60,
                          child: Image.asset(
                            'assets/images/12.png',
                            scale: 2,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // 상단 버튼들
              Container(
                width: width * 0.5,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildTopButton("보유 옷 기반", 0),
                    _buildTopButton("TPO 기반", 1),
                  ],
                ),
              ),
              Expanded(
                // PageView for swiping pages
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const chatbot2(), // 여기에 새로운 페이지 위젯을 넣으세요.
                          ),
                        );
                      },
                      splashColor: Colors.transparent, // 물결 효과를 투명하게
                      highlightColor: Colors.transparent,
                      child: Container(
                        child: Image.asset(
                          'assets/images/16.png',
                          scale: 2,
                        ),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/17.png',
                        scale: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopButton(String text, int page) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      splashColor: Colors.transparent, // 물결 효과를 투명하게
      highlightColor: Colors.transparent,
      onTap: () {
        _pageController.animateToPage(
          page,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: width * 0.25,
        height: 55,
        decoration: BoxDecoration(
            color:
                _currentPage == page ? const Color(0xff363636) : Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: _currentPage == page ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildPageContent(String text, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
    );
  }
}
