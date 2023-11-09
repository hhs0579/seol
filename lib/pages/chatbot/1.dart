import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTopButton("보유 옷 치수", 0),
                  _buildTopButton("TPO 치수", 1),
                ],
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
                    Container(),
                    Container(),
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
    return ElevatedButton(
      onPressed: () {
        _pageController.animateToPage(
          page,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _currentPage == page ? Colors.blue : Colors.grey,
      ),
      child: Text(text),
    );
  }

  Widget _buildPageContent(String text, Color color) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
      color: Colors.white,
      
      ),
    );
  }
}
