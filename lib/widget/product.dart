import 'package:flutter/material.dart';
import 'package:seol/pages/search/2.dart';
import 'package:seol/pages/search/3.dart';
import 'package:seol/utils/color.dart';

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
    "악세사리"
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
        if (isSelected) {
          selectedCategories.clear();
          selectedCategories.add(category);
        } else {
          selectedCategories.remove(category);
        }
      } else {
        if (isSelected) {
          selectedCategories.remove("전체");
          selectedCategories.add(category);
        } else {
          selectedCategories.remove(category);
          if (selectedCategories.isEmpty) {
            selectedCategories.add("전체");
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/34.png'),
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
                      left: 20, right: 15, top: 15, bottom: 10),
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
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    String category = categories[index];
                    bool isSelected = selectedCategories.contains(category);

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: ChoiceChip(
                        label: Text(category),
                        selected: isSelected,
                        onSelected: (bool selected) {
                          _handleCategorySelection(category, selected);
                        },
                        selectedColor: ColorList.brown,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: isSelected
                                ? ColorList.brown
                                : Colors
                                    .grey, // 선택된 아이템에는 ColorList.brown, 그 외에는 Colors.grey
                            // 선택된 아이템에는 두께를 2.0, 그 외에는 1.0
                          ),
                        ),
                        labelStyle: TextStyle(
                          color: isSelected ? Colors.white : Colors.grey,
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
                padding: const EdgeInsets.only(left: 15, bottom: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
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
                        child: DropdownButton(
                          underline: const SizedBox(),
                          hint: const Text(
                            '최신순',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          elevation: 0,
                          value: valueSel,
                          onChanged: (value) {
                            setState(() {
                              valueSel = value;
                            });
                          },
                          items: ListItem.map((valueItem) {
                            return DropdownMenuItem(
                              value: valueItem,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    valueItem,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                          // 드롭다운 메뉴의 모서리에 라운드 모양 추가
                          dropdownColor: Colors.white, // 메뉴의 배경색 설정
                          borderRadius: BorderRadius.circular(8), // 모서리 라운드 설정
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
              )
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
