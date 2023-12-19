import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/%08bottomsheet.dart';

class Search3 extends StatefulWidget {
  const Search3({super.key});

  @override
  State<Search3> createState() => _Search3State();
}

class _Search3State extends State<Search3> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final PageController _controller = PageController();
  final List<String> _imageList = [
    'assets/images/56.png',
    'assets/images/57.png',
    'assets/images/58.png',
    'assets/images/59.png',
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // 3개의 탭
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  bool f = false;
  bool g = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            '에스티엠씨',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        body: SizedBox(
            width: width,
            height: height,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Image.asset('assets/images/47.png'),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white, // 여기서 배경색을 설정할 수 있습니다.
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(40), // 상단 왼쪽 모서리 둥글게
                                  topRight:
                                      Radius.circular(40), // 상단 오른쪽 모서리 둥글게
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black
                                        .withOpacity(0.1), // 그림자 색상 및 투명도 설정
                                    offset: const Offset(
                                        0, -2), // 그림자 위치 조정 (상단에 그림자가 나타나도록)
                                    blurRadius: 6.0, // 그림자의 흐림 정도
                                    spreadRadius: 0, // 그림자의 확산 정도
                                  ),
                                ],
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: TabBar(
                                  controller: _tabController,
                                  labelColor: ColorList.brown, // 선택된 탭의 텍스트 색상
                                  unselectedLabelColor:
                                      Colors.black, // 선택되지 않은 탭의 텍스트 색상
                                  indicatorColor:
                                      ColorList.brown, // 선택된 탭 아래의 지시선 색상
                                  indicatorSize: TabBarIndicatorSize
                                      .tab, // 인디케이터가 탭의 전체 너비를 차지하도록 설정
                                  tabs: const [
                                    Tab(
                                      child: Text(
                                        '상품정보',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        '리뷰(0)',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Tab(
                                      child: Text(
                                        '문의',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: height * 2.5,
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5), // 그림자 색상
                                                spreadRadius: 0, // 그림자의 범위
                                                blurRadius: 1, // 그림자의 흐림 정도
                                                offset: const Offset(0,
                                                    3), // x, y 축의 그림자 위치 조정 (여기서는 아래쪽으로)
                                              ),
                                            ],
                                          ),
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        g = !g;
                                                      });
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                            'assets/images/153.png'),
                                                        const Icon(Icons
                                                            .keyboard_arrow_down_outlined)
                                                      ],
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        f = !f;
                                                      });
                                                    },
                                                    child: f
                                                        ? Image.asset(
                                                            'assets/images/141.png',
                                                            scale: 2,
                                                          )
                                                        : Image.asset(
                                                            'assets/images/140.png',
                                                            scale: 2,
                                                          ),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              g
                                                  ? InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          a = !a;
                                                        });
                                                      },
                                                      child: a
                                                          ? Image.asset(
                                                              'assets/images/49.png')
                                                          : Image.asset(
                                                              'assets/images/48.png'))
                                                  : Container(),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                        f
                                            ? Column(
                                                children: [
                                                  InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          b = !b;
                                                        });
                                                      },
                                                      child: !b
                                                          ? Container(
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: ColorList
                                                                          .grey)),
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 15),
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: const Text(
                                                                '제품 상세 정보',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            )
                                                          : Column(
                                                              children: [
                                                                Container(
                                                                  height: 50,
                                                                  decoration: const BoxDecoration(
                                                                      border: Border(
                                                                          bottom:
                                                                              BorderSide(color: Colors.grey))),
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              15),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      const Text(
                                                                    '제품 상세 정보',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets
                                                                      .only(
                                                                      left: 15,
                                                                      top: 15,
                                                                      bottom:
                                                                          15),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  width: width,
                                                                  color: const Color(
                                                                      0xffF2F2F2),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/51.png',
                                                                    scale: 2,
                                                                  ),
                                                                )
                                                              ],
                                                            )),
                                                  InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          c = !c;
                                                        });
                                                      },
                                                      child: !c
                                                          ? Container(
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  border: Border(
                                                                      bottom: BorderSide(
                                                                          color:
                                                                              ColorList.grey))),
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 15),
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: const Text(
                                                                '배송 정보',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            )
                                                          : Column(
                                                              children: [
                                                                Container(
                                                                  height: 50,
                                                                  decoration: BoxDecoration(
                                                                      border: Border(
                                                                          bottom:
                                                                              BorderSide(color: ColorList.grey))),
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              15),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      const Text(
                                                                    '배송 정보',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets
                                                                      .only(
                                                                      left: 15,
                                                                      top: 15,
                                                                      bottom:
                                                                          15),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  width: width,
                                                                  color: const Color(
                                                                      0xffF2F2F2),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/52.png',
                                                                    scale: 2,
                                                                  ),
                                                                )
                                                              ],
                                                            )),
                                                  InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          d = !d;
                                                        });
                                                      },
                                                      child: !d
                                                          ? Container(
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  border: Border(
                                                                      bottom: BorderSide(
                                                                          color:
                                                                              ColorList.grey))),
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left: 15),
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: const Text(
                                                                '환불/교환 정보',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            )
                                                          : Column(
                                                              children: [
                                                                Container(
                                                                  height: 50,
                                                                  decoration: BoxDecoration(
                                                                      border: Border(
                                                                          bottom:
                                                                              BorderSide(color: ColorList.grey))),
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          left:
                                                                              15),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      const Text(
                                                                    '환불/교환 정보',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  padding: const EdgeInsets
                                                                      .only(
                                                                      left: 15,
                                                                      top: 15,
                                                                      bottom:
                                                                          15),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  width: width,
                                                                  color: const Color(
                                                                      0xffF2F2F2),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/53.png',
                                                                    scale: 2,
                                                                  ),
                                                                ),
                                                              ],
                                                            )),
                                                ],
                                              )
                                            : Container(),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 20, left: 20, top: 20),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  ),
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(10))),
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                            child: Column(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 400,
                                                          child:
                                                              PageView.builder(
                                                            controller:
                                                                _controller,
                                                            itemCount:
                                                                _imageList
                                                                    .length,
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
                                                              return Image.asset(
                                                                  _imageList[
                                                                      index]);
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Positioned(
                                                      left: 10,
                                                      top: 0,
                                                      bottom: 0,
                                                      child: Center(
                                                        child: IconButton(
                                                          icon: const Icon(
                                                              Icons
                                                                  .arrow_back_ios,
                                                              color:
                                                                  Colors.white),
                                                          onPressed: () {
                                                            _controller
                                                                .previousPage(
                                                              duration:
                                                                  const Duration(
                                                                      milliseconds:
                                                                          300),
                                                              curve: Curves
                                                                  .easeInOut,
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      right: 10,
                                                      top: 0,
                                                      bottom: 0,
                                                      child: Center(
                                                        child: IconButton(
                                                          icon: const Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color:
                                                                  Colors.white),
                                                          onPressed: () {
                                                            _controller
                                                                .nextPage(
                                                              duration:
                                                                  const Duration(
                                                                      milliseconds:
                                                                          300),
                                                              curve: Curves
                                                                  .easeInOut,
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Image.asset(
                                                  'assets/images/135.png',
                                                  scale: 2,
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        )
                                      ],
                                    ),
                                  ), // 첫 번째 탭 내용
                                  const Icon(
                                      Icons.directions_transit), // 두 번째 탭 내용
                                  const Icon(
                                      Icons.directions_bike), // 세 번째 탭 내용
                                ],
                              ),
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
                    ],
                  ),
                ),
                Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // 그림자 색상 및 투명도 설정
                        offset:
                            const Offset(0, -4), // 그림자 위치 조정 (상단에 그림자가 나타나도록)
                        blurRadius: 6.0, // 그림자의 흐림 정도
                        spreadRadius: 1.0, // 그림자의 확산 정도
                      ),
                    ],
                  ),
                  height: 80,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              e = !e;
                            });
                          },
                          child: Container(
                              padding: const EdgeInsets.only(right: 20),
                              child: e
                                  ? Image.asset(
                                      'assets/images/55.png',
                                      scale: 2,
                                    )
                                  : Image.asset(
                                      'assets/images/54.png',
                                      scale: 2,
                                    ))),
                      InkWell(
                        onTap: () {
                          BuyBottom(context);
                        },
                        child: Row(
                          children: [
                            Container(
                              width: width * 0.33,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: ColorList.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                '장바구니 담기',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: width * 0.33,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: ColorList.blue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                '구매하기',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
