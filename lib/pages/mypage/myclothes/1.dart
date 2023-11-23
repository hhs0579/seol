import 'package:flutter/material.dart';
import 'package:seol/pages/mypage/myclothes/2.dart';
import 'package:seol/utils/color.dart';

class mycloths extends StatelessWidget {
  const mycloths({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          centerTitle: true,
          title: const Text(
            '나의 보유 옷',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        body: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyClothes2(
                        listItem: ['자켓', '점퍼', '블레이저', '집업', '조끼', '가디건', '수트'],
                        imagePath: 'assets/images/122.png',
                      ), // 여기에 새로운 페이지 위젯을 넣으세요.
                    ),
                  );
                },
                child: _buildClothCategory(width, '아우터')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyClothes2(
                        listItem: [
                          '반팔티',
                          '티셔츠',
                          '셔츠',
                          '맨투맨',
                          '후드티',
                          '조끼',
                          '민소매'
                        ],
                        imagePath: 'assets/images/124.png',
                      ), // 여기에 새로운 페이지 위젯을 넣으세요.
                    ),
                  );
                },
                child: _buildClothCategory(width, '상의')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyClothes2(
                        listItem: ['슬랙스', '반바지', '청바지', '트레이닝', '조거', '긴바지'],
                        imagePath: 'assets/images/125.png',
                      ), // 여기에 새로운 페이지 위젯을 넣으세요.
                    ),
                  );
                },
                child: _buildClothCategory(width, '하의')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyClothes2(
                        listItem: ['캡', '비니', '버킷햇', '기타'],
                        imagePath: 'assets/images/126.png',
                      ), // 여기에 새로운 페이지 위젯을 넣으세요.
                    ),
                  );
                },
                child: _buildClothCategory(width, '모자')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyClothes2(
                        listItem: [
                          '샌들',
                          '로퍼',
                          '슬리퍼',
                          '힐',
                          '스니커즈',
                          '워커',
                          '운동화',
                          '부츠'
                        ],
                        imagePath: 'assets/images/127.png',
                      ), // 여기에 새로운 페이지 위젯을 넣으세요.
                    ),
                  );
                },
                child: _buildClothCategory(width, '신발')),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyClothes2(
                        listItem: ['백팩', '크로스백', '메신저백', '클러치', '토트백', '에코백'],
                        imagePath: 'assets/images/128.png',
                      ), // 여기에 새로운 페이지 위젯을 넣으세요.
                    ),
                  );
                },
                child: _buildClothCategory(width, '가방')),
          ],
        ));
  }

  Widget _buildClothCategory(double width, String category) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          color: ColorList.black,
          border: const Border(bottom: BorderSide(color: Colors.black))),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              category,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(1000),
                    color: ColorList.black,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '등록하기',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
