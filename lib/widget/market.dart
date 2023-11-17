import 'package:flutter/material.dart';
import 'package:seol/pages/search/4.dart';

import '../utils/color.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  var valueSel;
  List ListItem = [
    '최신순',
    '인기순',
  ];
  bool male = true;
  bool female = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/39.png'),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white, // 박스의 배경색
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1), // 그림자의 색상과 투명도
                      offset: const Offset(0, 6), // x축 방향으로 0, y축 방향으로 4의 오프셋
                      blurRadius: 10.0, // 흐림 정도
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/40.png',
                          scale: 1.8,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              male = !male;
                              female = false;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              '남',
                              style: TextStyle(
                                  color: male ? Colors.black : Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const Text(
                          'ㅣ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              female = !female;
                              male = false;
                            });
                          },
                          child: Container(
                            child: Text(
                              '여',
                              style: TextStyle(
                                  color: female ? Colors.black : Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/41.png',
                      scale: 2.5,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white, // 박스의 배경색
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // 그림자의 색상과 투명도
                        offset: const Offset(0, 6), // x축 방향으로 0, y축 방향으로 4의 오프셋
                        blurRadius: 10.0, // 흐림 정도
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(10),
                  child: male
                      ? Image.asset('assets/images/37.png')
                      : Image.asset('assets/images/42.png')),
              const SizedBox(
                height: 1,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 5, bottom: 5),
                color: Colors.white,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('인기 쇼핑몰 순위'),
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
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const Search4(), // 여기에 새로운 페이지 위젯을 넣으세요.
                    ),
                  );
                },
                child: Container(
                  child: male
                      ? Image.asset('assets/images/43.png')
                      : Image.asset('assets/images/44.png'),
                ),
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
      ],
    );
  }
}
