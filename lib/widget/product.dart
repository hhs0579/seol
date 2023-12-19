import 'package:flutter/material.dart';
import 'package:seol/pages/search/2.dart';
import 'package:seol/pages/search/3.dart';
import 'package:seol/pages/search/5.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/drawer.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int selectedIndex = 0;
  final List<String> categories = [
    "전체",
    "상의",
    "하의",
    "원피스/세트",
    "아우터",
    "신발",
    "악세사리",
    "가방"
  ];
  final List<String> categories2 = [
    '반팔티',
    '티셔츠',
    '셔츠',
    '맨투맨',
    '후드티',
    '조끼',
    '민소매'
  ];
  final List<String> categories3 = ['슬랙스', '반바지', '청바지', '트레이닝', '조거', '긴바지'];

  final List<String> categories4 = ['미니원피스', '롱원피스', '미니스커트', '미디/롱스커트'];

  final List<String> categories5 = [
    '자켓',
    '점퍼',
    '블레이저',
    '집업',
    '조끼',
    '가디건',
    '수트'
  ];
  final List<String> categories6 = [
    '샌들',
    '로퍼',
    '슬리퍼',
    '힐',
    '스니커즈',
    '워커',
    '운동화',
    '부츠'
  ];
  final List<String> categories7 = [
    '양말',
    '목걸이',
    '팔찌',
    '반지',
    '시계',
    '장갑',
    '아이웨어',
    '머플러',
    '벨트',
  ];
  final List<String> categories8 = [
    '백팩',
    '크로스백/메신저백',
    '클러치/파우치백',
    '숄더/토트백',
    '에코백',
    '브리프케이스',
    '웨이스트백',
  ];
  List ListItem = [
    '최신순',
    '인기순',
    '판매순',
    '리뷰순',
    '낮은 가격순',
    '높은 가격순',
  ];
  var valueSel;
  final List<String> selectedCategories = [];
  void _handleCategorySelection(String category, bool isSelected) {
    setState(() {
      if (category == "전체") {
        selectedCategories.clear();
        selectedCategories.add(category);
      } else {
        if (isSelected) {
          // '전체' 카테고리 해제
          selectedCategories.remove("전체");

          // 대분류 선택 시, 다른 대분류 해제
          if (isMajorCategory(category)) {
            selectedCategories.removeWhere((cat) => isMajorCategory(cat));
          }
          selectedCategories.add(category);
        } else {
          selectedCategories.remove(category);
        }

        // 선택된 대분류 카테고리가 없으면 '전체'를 자동으로 추가
        if (selectedCategories.isEmpty ||
            selectedCategories.every((cat) => !isMajorCategory(cat))) {
          selectedCategories.add("전체");
        }
      }
    });
  }

  bool isMajorCategory(String category) {
    List<String> majorCategories = [
      "상의",
      "하의",
      "원피스/세트",
      "아우터",
      "신발",
      "악세사리",
      "가방"
    ];
    return majorCategories.contains(category);
  }

  void _openDrawer() {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/34.png',
                scale: 1.2,
              ),
              // ... 기타 위젯들
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // 박스의 배경색
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // 그림자의 색상과 투명도
                        offset: const Offset(0, 4), // x축 방향으로 0, y축 방향으로 4의 오프셋
                        blurRadius: 4.0, // 흐림 정도
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 15, bottom: 10),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const Search2(), // 여기에 새로운 페이지 위젯을 넣으세요.
                          ),
                        );
                      },
                      child: Image.asset('assets/images/35.png'))),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(
                  left: 2,
                ),
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    String category = categories[index];
                    bool isSelected = selectedCategories.contains(category);

                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 3, right: 3, top: 5, bottom: 10),
                      child: TextButton(
                        onPressed: () {
                          _handleCategorySelection(category, !isSelected);
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            isSelected ? ColorList.brown : Colors.white,
                          ),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color:
                                    isSelected ? ColorList.brown : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        child: Text(
                          category,
                          style: TextStyle(
                              color: isSelected ? Colors.white : Colors.grey),
                        ),
                      ),
                    );
                  },
                ),
              ),
              if (selectedCategories.contains("상의"))
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories2.length,
                    itemBuilder: (BuildContext context, int index) {
                      String category = categories2[index];
                      bool isSelected = selectedCategories.contains(category);

                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 3, right: 3, top: 5, bottom: 10),
                        child: TextButton(
                          onPressed: () {
                            _handleCategorySelection(category, !isSelected);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isSelected ? ColorList.brown : Colors.white,
                            ),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: isSelected
                                      ? ColorList.brown
                                      : Colors.brown,
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            category,
                            style: TextStyle(
                                color:
                                    isSelected ? Colors.white : Colors.brown),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              if (selectedCategories.contains("하의"))
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories3.length,
                    itemBuilder: (BuildContext context, int index) {
                      String category = categories3[index];
                      bool isSelected = selectedCategories.contains(category);

                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 3, right: 3, top: 5, bottom: 10),
                        child: TextButton(
                          onPressed: () {
                            _handleCategorySelection(category, !isSelected);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isSelected ? ColorList.brown : Colors.white,
                            ),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: isSelected
                                      ? ColorList.brown
                                      : Colors.brown,
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            category,
                            style: TextStyle(
                                color:
                                    isSelected ? Colors.white : Colors.brown),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              if (selectedCategories.contains("원피스/세트"))
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories4.length,
                    itemBuilder: (BuildContext context, int index) {
                      String category = categories4[index];
                      bool isSelected = selectedCategories.contains(category);

                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 3, right: 3, top: 5, bottom: 10),
                        child: TextButton(
                          onPressed: () {
                            _handleCategorySelection(category, !isSelected);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isSelected ? ColorList.brown : Colors.white,
                            ),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: isSelected
                                      ? ColorList.brown
                                      : Colors.brown,
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            category,
                            style: TextStyle(
                                color:
                                    isSelected ? Colors.white : Colors.brown),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              if (selectedCategories.contains("아우터"))
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories5.length,
                    itemBuilder: (BuildContext context, int index) {
                      String category = categories5[index];
                      bool isSelected = selectedCategories.contains(category);

                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 3, right: 3, top: 5, bottom: 10),
                        child: TextButton(
                          onPressed: () {
                            _handleCategorySelection(category, !isSelected);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isSelected ? ColorList.brown : Colors.white,
                            ),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: isSelected
                                      ? ColorList.brown
                                      : Colors.brown,
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            category,
                            style: TextStyle(
                                color:
                                    isSelected ? Colors.white : Colors.brown),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              if (selectedCategories.contains("신발"))
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories6.length,
                    itemBuilder: (BuildContext context, int index) {
                      String category = categories6[index];
                      bool isSelected = selectedCategories.contains(category);

                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 3, right: 3, top: 5, bottom: 10),
                        child: TextButton(
                          onPressed: () {
                            _handleCategorySelection(category, !isSelected);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isSelected ? ColorList.brown : Colors.white,
                            ),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: isSelected
                                      ? ColorList.brown
                                      : Colors.brown,
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            category,
                            style: TextStyle(
                                color:
                                    isSelected ? Colors.white : Colors.brown),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              if (selectedCategories.contains("악세사리"))
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories7.length,
                    itemBuilder: (BuildContext context, int index) {
                      String category = categories7[index];
                      bool isSelected = selectedCategories.contains(category);

                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 3, right: 3, top: 5, bottom: 10),
                        child: TextButton(
                          onPressed: () {
                            _handleCategorySelection(category, !isSelected);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isSelected ? ColorList.brown : Colors.white,
                            ),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: isSelected
                                      ? ColorList.brown
                                      : Colors.brown,
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            category,
                            style: TextStyle(
                                color:
                                    isSelected ? Colors.white : Colors.brown),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              if (selectedCategories.contains("가방"))
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    left: 2,
                  ),
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories8.length,
                    itemBuilder: (BuildContext context, int index) {
                      String category = categories8[index];
                      bool isSelected = selectedCategories.contains(category);

                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 3, right: 3, top: 5, bottom: 10),
                        child: TextButton(
                          onPressed: () {
                            _handleCategorySelection(category, !isSelected);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isSelected ? ColorList.brown : Colors.white,
                            ),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: BorderSide(
                                  color: isSelected
                                      ? ColorList.brown
                                      : Colors.brown,
                                ),
                              ),
                            ),
                          ),
                          child: Text(
                            category,
                            style: TextStyle(
                                color:
                                    isSelected ? Colors.white : Colors.brown),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // 박스의 배경색
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1), // 그림자의 색상과 투명도
                      offset: const Offset(0, 4), // x축 방향으로 0, y축 방향으로 4의 오프셋
                      blurRadius: 4.0, // 흐림 정도
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(left: 15, bottom: 15, top: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _openDrawer();
                        },
                        child: Image.asset(
                          'assets/images/36.png',
                          scale: 2,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorList.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: IntrinsicWidth(
                          child: DropdownButton(
                            isExpanded: false,
                            itemHeight: null,
                            underline: const SizedBox(),
                            hint: const Text(
                              '최신순',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            elevation: 1,
                            value: valueSel,
                            onChanged: (value) {
                              setState(() {
                                valueSel = value;
                              });
                            },
                            items: ListItem.map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        valueItem,
                                        style: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                            // 드롭다운 메뉴의 모서리에 라운드 모양 추가
                            dropdownColor: Colors.white, // 메뉴의 배경색 설정
                            borderRadius:
                                BorderRadius.circular(8), // 모서리 라운드 설정
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/37.png',
                        scale: 2,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const Search3(), // 여기에 새로운 페이지 위젯을 넣으세요.
                        ),
                      );
                    },
                    child: Image.asset('assets/images/38.png')),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const Search5(), // 여기에 새로운 페이지 위젯을 넣으세요.
                        ),
                      );
                    },
                    child: Image.asset('assets/images/38-2.png')),
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
      ]),
    );
  }
}
