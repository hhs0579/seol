import 'package:flutter/material.dart';
import 'package:seol/pages/chatbot/1.dart';
import 'package:seol/pages/community/1.dart';
import 'package:seol/pages/home/1.dart';

import 'package:seol/pages/office/1.dart';
import 'package:seol/pages/search/1.dart';
import 'package:seol/utils/color.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;
  // 현재 선택된 항목의 인덱스를 표시
  final List<Widget> _pages = [
    const home1(),
    const search1(),
    const chatbot1(),
    const community1(),
    const office1()
  ];

  // 네비게이션 바 항목을 누를 때 호출될 함수
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        unselectedItemColor: ColorList.grey,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              label: '홈',
              icon: Image.asset(
                'assets/images/i1.png',
                width: 20.0,
              ),
              activeIcon: Image.asset(
                'assets/images/i1-2.png',
                width: 20.0,
              )),
          BottomNavigationBarItem(
              label: '검색',
              icon: Image.asset(
                'assets/images/i2.png',
                width: 20.0,
              ),
              activeIcon: Image.asset(
                'assets/images/i2-2.png',
                width: 20.0,
              )),
          BottomNavigationBarItem(
              label: '챗봇',
              icon: Image.asset(
                'assets/images/i3.png',
                width: 20.0,
              ),
              activeIcon: Image.asset(
                'assets/images/i3-2.png',
                width: 20.0,
              )),
          BottomNavigationBarItem(
              label: '광장',
              icon: Image.asset(
                'assets/images/i4.png',
                width: 20.0,
              ),
              activeIcon: Image.asset(
                'assets/images/i4-2.png',
                width: 20.0,
              )),
          BottomNavigationBarItem(
              label: '사무소',
              icon: Image.asset(
                'assets/images/i5.png',
                width: 20.0,
              ),
              activeIcon: Image.asset(
                'assets/images/i5-2.png',
                width: 20.0,
              )),
        ],
        selectedLabelStyle: const TextStyle(
          fontSize: 10, // 선택된 라벨의 텍스트 크기
          height: 1.5, // 선택된 라벨의 행 높이
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10, // 선택되지 않은 라벨의 텍스트 크기
          height: 1.5, // 선택되지 않은 라벨의 행 높이
        ),
      ),
    );
  }
}
