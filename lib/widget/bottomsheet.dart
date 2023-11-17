import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';

void showBottomSheets(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    context: context,
    builder: (context) {
      return InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        splashColor: Colors.transparent, // 물결 효과를 투명하게
        highlightColor: Colors.transparent,
        child: Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: MediaQuery.of(context).size.height * 0.45,
            child: Image.asset(
              'assets/images/33.png',
              scale: 2.5,
            )),
      );
    },
  );
}

void BuyBottom(BuildContext context) {
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  showModalBottomSheet(
    isScrollControlled: true,
    shape: const BeveledRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setModalState) {
          return InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.65,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              '상품 선택',
                              style: TextStyle(
                                color: ColorList.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setModalState(() {
                                a = !a;
                                if (c == true) {
                                  c = false;
                                }
                                if (d == true) {
                                  d = false;
                                }
                              });
                            },
                            child: a
                                ? InkWell(
                                    onTap: () {
                                      setModalState(() {
                                        if (a == true) {
                                          c = !c;
                                          a = !a;
                                        }
                                        if (d == true) {
                                          d = false;
                                        }
                                      });
                                    },
                                    child: Image.asset(
                                      'assets/images/66.png',
                                      scale: 2,
                                    ),
                                  )
                                : Image.asset(
                                    'assets/images/65.png',
                                    scale: 2,
                                  ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                              setModalState(() {
                                b = !b;
                              });
                            },
                            child: b
                                ? InkWell(
                                    onTap: () {
                                      setModalState(() {
                                        if (b == true) {
                                          d = !d;
                                          b = !b;
                                          c = false;
                                        }
                                      });
                                    },
                                    child: Image.asset(
                                      'assets/images/68.png',
                                      scale: 2,
                                    ),
                                  )
                                : Image.asset(
                                    'assets/images/67.png',
                                    scale: 2,
                                  ),
                          ),
                          const SizedBox(height: 15),
                          c
                              ? Image.asset(
                                  'assets/images/69.png',
                                  scale: 2,
                                )
                              : Container(),
                          d
                              ? Image.asset(
                                  'assets/images/70.png',
                                  scale: 2,
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.grey.withOpacity(0.2), // 그림자 색상 및 투명도 설정
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
                              setModalState(() {
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
                            Navigator.pop(context);
                            showCustomDialog(context);
                          },
                          child: Row(
                            children: [
                              Container(
                                width: width * 0.3,
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
                                width: 30,
                              ),
                              Container(
                                width: width * 0.3,
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
              ),
            ),
          );
        },
      );
    },
  );
}

void showCustomDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // 배경 투명 설정
    builder: (BuildContext bc) {
      return Container(
          margin: const EdgeInsets.symmetric(
              horizontal: 40, vertical: 40), // 모달의 양 옆과 하단에 마진 추가
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30), // 상단 모서리 둥글게
            boxShadow: const [
              // 그림자 추가
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 0.0,
                offset: Offset(0.0, 0.0),
              ),
            ],
          ),
          child: Image.asset('assets/images/71.png'));
    },
  );
}
