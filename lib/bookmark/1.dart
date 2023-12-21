import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            // 타이틀 및 백 버튼
            Container(
              height: height * 0.16,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 1),
                )
              ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon:
                          const Icon(Icons.arrow_back_ios, color: Colors.black),
                    ),
                    const Icon(Icons.bookmark_border_outlined,
                        color: Colors.black, size: 30),
                    SizedBox(width: width * 0.1)
                  ],
                ),
              ),
            ),
            // 탭 바
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: ColorList.grey, width: 1))),
              height: height * 0.05,
              child: Row(
                children: [
                  _buildTabBarItem('코디', 0),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: VerticalDivider(
                        width: 1, thickness: 1, color: ColorList.grey),
                  ),
                  _buildTabBarItem('상품', 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: VerticalDivider(
                        width: 1, thickness: 1, color: ColorList.grey),
                  ),
                  _buildTabBarItem('가게', 2),
                ],
              ),
            ),
            // 탭 바 뷰
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: width,
                      child: Image.asset(
                        'assets/images/164.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: width,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/165.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/images/165.png',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: width,
                      child: Image.asset(
                        'assets/images/166.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBarItem(String title, int index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _tabController.animateTo(index);
          });
        },
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: _tabController.index == index ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
