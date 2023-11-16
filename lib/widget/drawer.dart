import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<String> myTextList = [
    '결혼식',
    '등산',
    '가족모임',
    '출근',
    '산책',
    '면접/발표',
    '여행',
    '소개팅',
    '데이트/커플',
    '클럽/파티',
    '캠퍼스',
    '페스티벌'
  ];

  late List<bool> selected;

  @override
  void initState() {
    super.initState();
    selected = List.generate(myTextList.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      child: Image.asset('assets/images/45.png'),
    ));
  }
}
