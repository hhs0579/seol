import 'package:flutter/material.dart';
import 'package:seol/bottom.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/%08dialog.dart';

void showBottomSheets(BuildContext context) {
  bool a = false;
  bool b = false;

  showModalBottomSheet(
    isScrollControlled: true,
    shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    context: context,
    builder: (context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return Container(
            height: MediaQuery.of(context).size.height * 0.55,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset('assets/images/154.png'),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          a = !a;
                          if (b == true) {
                            b = false;
                          }
                        });
                      },
                      child: a
                          ? Image.asset('assets/images/156.png')
                          : Image.asset('assets/images/155.png'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          b = !b;
                          if (a == true) {
                            a = false;
                          }
                        });
                      },
                      child: b
                          ? Image.asset('assets/images/158.png')
                          : Image.asset('assets/images/157.png'),
                    )
                  ],
                ),
                const Spacer(),
                Image.asset('assets/images/159.png')
              ],
            ));
      });
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
                                  scale: 1,
                                )
                              : Container(),
                          const SizedBox(
                            height: 20,
                          )
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
    builder: (BuildContext context) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30), // 상단 모서리 둥글게
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 0.0),
            ),
          ],
        ),
        child: Image.asset('assets/images/71.png'),
      );
    },
  );
}

void showCustomDialog2(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent, // 배경 투명 설정
    builder: (BuildContext bc) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30), // 상단 모서리 둥글게
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(66, 28, 23, 23),
              blurRadius: 10.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 0.0),
            ),
          ],
        ),
        child: Image.asset('assets/images/71.png'),
      );
    },
  );
}

void showCustomDialog3(BuildContext context) {
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
          child: Image.asset('assets/images/108.png'));
    },
  );
}

void ordercancel(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  String selectedReason = '';
  TextEditingController controller = TextEditingController();
  int currentLength = 0;

  const int maxLength = 150;
  controller.addListener(() {
    if (currentLength != controller.text.length) {
      currentLength = controller.text.length;
      // SetState를 호출하여 UI를 새로고침
    }
  });
  showModalBottomSheet(
    backgroundColor: Colors.white,
    isScrollControlled: true,
    shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    context: context,
    builder: (context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        void updateReason(String reason) {
          setState(() {
            selectedReason = reason;
            a = false;
          });
        }

        return Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: FractionallySizedBox(
            heightFactor: 0.8,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(),
                                  Container(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: const Text(
                                      '   주문 취소',
                                      style: TextStyle(
                                          color: Color(0xff333333),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        weight: 100,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Image.asset(
                                'assets/images/146.png',
                                scale: 1.1,
                              ),
                            ),
                            const Text(
                              '내 주문 취소 이유는...?',
                              style:
                                  TextStyle(fontFamily: 'jiji', fontSize: 16),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  a = !a;
                                });
                              },
                              child: !a
                                  ? Container(
                                      alignment: Alignment.center,
                                      height: height * 0.08,
                                      width: width * 0.85,
                                      decoration: BoxDecoration(
                                          color: selectedReason.isEmpty
                                              ? Colors.white
                                              : ColorList.orange,
                                          border: selectedReason.isEmpty
                                              ? Border.all(
                                                  color: ColorList.grey,
                                                  width: 1)
                                              : const Border(),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        selectedReason.isEmpty
                                            ? '내 주문 취소 사유 선택하기'
                                            : selectedReason,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: selectedReason.isEmpty
                                                ? ColorList.orange
                                                : Colors.white),
                                      ),
                                    )
                                  : Container(
                                      alignment: Alignment.center,
                                      height: height * 0.265,
                                      width: width * 0.85,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: ColorList.grey, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: width * 0.85,
                                            height: height * 0.08,
                                            decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color: ColorList.grey,
                                                      width: 1)),
                                            ),
                                            child: Text(
                                              '내 주문 취소 사유 선택하기',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: ColorList.orange),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                updateReason(selectedReason =
                                                    '단순 변심이에요');
                                                b = !b;
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: width * 0.85,
                                              height: height * 0.06,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color: ColorList.grey,
                                                        width: 1)),
                                              ),
                                              child: const Text(
                                                '단순 변심이에요',
                                                style: TextStyle(
                                                    color: Color(0xff909090),
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                c = !c;
                                                updateReason(selectedReason =
                                                    '옵션(사이즈, 색상) 잘못 선택했어요');
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: width * 0.85,
                                              height: height * 0.06,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color: ColorList.grey,
                                                        width: 1)),
                                              ),
                                              child: const Text(
                                                '옵션(사이즈, 색상) 잘못 선택했어요',
                                                style: TextStyle(
                                                    color: Color(0xff909090),
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                d = !d;
                                                updateReason(selectedReason =
                                                    '수량을 잘못 선택했어요');
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: width * 0.85,
                                              height: height * 0.06,
                                              decoration: const BoxDecoration(),
                                              child: const Text(
                                                '수량을 잘못 선택했어요',
                                                style: TextStyle(
                                                    color: Color(0xff909090),
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            selectedReason.isEmpty
                                ? Container()
                                : Container(
                                    width: width * 0.85,
                                    height: height * 0.28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: ColorList.grey, width: 1),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            '상세 취소 사유',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          height: height * 0.18,
                                          width: width * 0.75,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: ColorList.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: ColorList.lightgrey),
                                          child: TextField(
                                            controller: controller,
                                            maxLength: 150, // 카운터 텍스트를 숨깁니다
                                            maxLines: 5,
                                            decoration: InputDecoration(
                                                counterText: '',
                                                border: InputBorder.none,
                                                hintText:
                                                    '[필수] 상세 취소 사유를 사장님에게 알려주세요',
                                                hintStyle: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorList.grey)),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              right: 20, top: 10),
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '$currentLength/$maxLength',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: ColorList.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                          ],
                        )),
                  ),
                ),
                (selectedReason.isNotEmpty && controller.text.isNotEmpty)
                    ? InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          ordercancelDone(context);
                        },
                        child: Container(
                          width: width,
                          height: height * 0.1,
                          color: ColorList.black,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit_square,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('작성완료',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16)),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        width: width,
                        height: height * 0.1,
                        color: const Color(0xffEEEEEE),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_square,
                              color: ColorList.grey,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('작성완료',
                                style: TextStyle(
                                  color: ColorList.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      )
              ],
            ),
          ),
        );
      });
    },
  );
}

void orderchange(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  bool re = false;
  bool ex = true;
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  bool f = false;
  bool b2 = false;
  bool c2 = false;
  bool d2 = false;
  bool e2 = false;
  bool f2 = false;
  String selectedReason = '';
  String selectedReason2 = '';
  TextEditingController controller = TextEditingController();
  int currentLength = 0;

  const int maxLength = 150;
  controller.addListener(() {
    if (currentLength != controller.text.length) {
      currentLength = controller.text.length;
      // SetState를 호출하여 UI를 새로고침
    }
  });
  showModalBottomSheet(
    backgroundColor: Colors.white,
    isScrollControlled: true,
    shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    context: context,
    builder: (context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        void updateReason(String reason) {
          setState(() {
            selectedReason = reason;
            a = false;
          });
        }

        void updateReason2(String reason) {
          setState(() {
            selectedReason2 = reason;
            a = false;
          });
        }

        return Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: FractionallySizedBox(
            heightFactor: 0.8,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(),
                                  Container(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: const Text(
                                      '   교환/환불',
                                      style: TextStyle(
                                          color: Color(0xff333333),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        weight: 100,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 20),
                              child: Image.asset(
                                'assets/images/145.png',
                                scale: 1.1,
                              ),
                            ),
                            Container(
                              width: width * 0.85,
                              height: height * 0.05,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: ColorList.grey, width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        re = !re;
                                        ex = !ex;
                                      });
                                    },
                                    child: Container(
                                      color: Colors.transparent, // 배경 투명으로 설정
                                      width: width * 0.4, // 전체 컨테이너 너비의 절반
                                      height: height * 0.05, // 컨테이너 높이와 동일
                                      alignment: Alignment.center,
                                      child: Text(
                                        '교환',
                                        style: TextStyle(
                                            color: ex
                                                ? ColorList.primary
                                                : ColorList.grey),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color: ColorList.grey,
                                    width: 1,
                                    height: height * 0.05,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        re = !re;
                                        ex = !ex;
                                      });
                                    },
                                    child: Container(
                                      color: Colors.transparent, // 배경 투명으로 설정
                                      width: width * 0.4, // 전체 컨테이너 너비의 절반
                                      height: height * 0.05, // 컨테이너 높이와 동일
                                      alignment: Alignment.center,
                                      child: Text(
                                        '환불',
                                        style: TextStyle(
                                            color: re
                                                ? ColorList.primary
                                                : ColorList.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ex
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        a = !a;
                                      });
                                    },
                                    child: !a
                                        ? Container(
                                            alignment: Alignment.center,
                                            height: height * 0.08,
                                            width: width * 0.85,
                                            decoration: BoxDecoration(
                                                color: selectedReason.isEmpty
                                                    ? Colors.white
                                                    : ColorList.orange,
                                                border: selectedReason.isEmpty
                                                    ? Border.all(
                                                        color: ColorList.grey,
                                                        width: 1)
                                                    : const Border(),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Text(
                                              selectedReason.isEmpty
                                                  ? '내 교환 사유 선택하기'
                                                  : selectedReason,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: selectedReason.isEmpty
                                                      ? ColorList.orange
                                                      : Colors.white),
                                            ),
                                          )
                                        : Container(
                                            alignment: Alignment.center,
                                            height: height * 0.3825,
                                            width: width * 0.85,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: ColorList.grey,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              children: [
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: width * 0.85,
                                                  height: height * 0.08,
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            color:
                                                                ColorList.grey,
                                                            width: 1)),
                                                  ),
                                                  child: Text(
                                                    '내 교환 사유 선택하기',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color:
                                                            ColorList.orange),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      updateReason(
                                                          selectedReason =
                                                              '단순 변심이에요');
                                                      b = !b;
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: ColorList
                                                                  .grey,
                                                              width: 1)),
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '단순 변심이에요',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          '나의 귀책사유',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      c = !c;
                                                      updateReason(selectedReason =
                                                          '옵션(사이즈, 색상) 잘못 선택했어요');
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: ColorList
                                                                  .grey,
                                                              width: 1)),
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '옵션(사이즈, 색상) 잘못 선택했어요',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          '나의 귀책사유',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      d = !d;
                                                      updateReason(
                                                          selectedReason =
                                                              '상품에 하자가 있어요');
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: ColorList
                                                                  .grey,
                                                              width: 1)),
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '상품에 하자가 있어요',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          '가게 귀책사유',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      e = !e;
                                                      updateReason(
                                                          selectedReason =
                                                              '오배송 되었어요');
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: ColorList
                                                                  .grey,
                                                              width: 1)),
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '오배송 되었어요',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          '가게 귀책사유',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      f = !f;
                                                      updateReason(selectedReason =
                                                          '보여진 상세페이지 정보와 많이 달라요');
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(),
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '보여진 상세페이지 정보와 많이 달라요',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          '가게 귀책사유',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        a = !a;
                                      });
                                    },
                                    child: !a
                                        ? Container(
                                            alignment: Alignment.center,
                                            height: height * 0.08,
                                            width: width * 0.85,
                                            decoration: BoxDecoration(
                                                color: selectedReason2.isEmpty
                                                    ? Colors.white
                                                    : ColorList.orange,
                                                border: selectedReason2.isEmpty
                                                    ? Border.all(
                                                        color: ColorList.grey,
                                                        width: 1)
                                                    : const Border(),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Text(
                                              selectedReason2.isEmpty
                                                  ? '내 환불 사유 선택하기'
                                                  : selectedReason2,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: selectedReason2.isEmpty
                                                      ? ColorList.orange
                                                      : Colors.white),
                                            ),
                                          )
                                        : Container(
                                            alignment: Alignment.center,
                                            height: height * 0.3825,
                                            width: width * 0.85,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: ColorList.grey,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Column(
                                              children: [
                                                Container(
                                                  alignment: Alignment.center,
                                                  width: width * 0.85,
                                                  height: height * 0.08,
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            color:
                                                                ColorList.grey,
                                                            width: 1)),
                                                  ),
                                                  child: Text(
                                                    '내 환불 사유 선택하기',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color:
                                                            ColorList.orange),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      updateReason2(
                                                          selectedReason2 =
                                                              '단순 변심이에요');
                                                      b2 = !b2;
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: ColorList
                                                                  .grey,
                                                              width: 1)),
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '단순 변심이에요',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          '나의 귀책사유',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      c2 = !c2;
                                                      updateReason2(
                                                          selectedReason2 =
                                                              '옵션(사이즈, 색상) 잘못 선택했어요');
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: ColorList
                                                                  .grey,
                                                              width: 1)),
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '옵션(사이즈, 색상) 잘못 선택했어요',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          '나의 귀책사유',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      d2 = !d2;
                                                      updateReason2(
                                                          selectedReason2 =
                                                              '상품에 하자가 있어요');
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: ColorList
                                                                  .grey,
                                                              width: 1)),
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '상품에 하자가 있어요',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          '가게 귀책사유',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      e2 = !e2;
                                                      updateReason2(
                                                          selectedReason2 =
                                                              '오배송 되었어요');
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration: BoxDecoration(
                                                      border: Border(
                                                          bottom: BorderSide(
                                                              color: ColorList
                                                                  .grey,
                                                              width: 1)),
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '오배송 되었어요',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          '가게 귀책사유',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      f2 = !f2;
                                                      updateReason2(
                                                          selectedReason2 =
                                                              '보여진 상세페이지 정보와 많이 달라요');
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(),
                                                    ),
                                                    child: const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '보여진 상세페이지 정보와 많이 달라요',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          '가게 귀책사유',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff909090),
                                                              fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                  ),
                            const SizedBox(
                              height: 20,
                            ),
                            selectedReason.isEmpty
                                ? Container()
                                : Container(
                                    width: width * 0.85,
                                    height: height * 0.28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: ColorList.grey, width: 1),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            '교환 사유',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          height: height * 0.18,
                                          width: width * 0.75,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: ColorList.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: ColorList.lightgrey),
                                          child: TextField(
                                            controller: controller,
                                            maxLength: 150, // 카운터 텍스트를 숨깁니다
                                            maxLines: 5,
                                            decoration: InputDecoration(
                                                counterText: '',
                                                border: InputBorder.none,
                                                hintText:
                                                    '[필수] 상세한 사유를 사장님에게 알려주세요\n* 가게 정책에 따라 단순변심의 경우,배송비가 부과될 수 있습니다.',
                                                hintStyle: TextStyle(
                                                    fontSize: 12,
                                                    color: ColorList.grey)),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              right: 20, top: 10),
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '$currentLength/$maxLength',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: ColorList.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                          ],
                        )),
                  ),
                ),
                (selectedReason.isNotEmpty && controller.text.isNotEmpty)
                    ? InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          ordercancelDone(context);
                        },
                        child: Container(
                          width: width,
                          height: height * 0.1,
                          color: ColorList.black,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit_square,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('작성완료',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16)),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        width: width,
                        height: height * 0.1,
                        color: const Color(0xffEEEEEE),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit_square,
                              color: ColorList.grey,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('작성완료',
                                style: TextStyle(
                                  color: ColorList.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      )
              ],
            ),
          ),
        );
      });
    },
  );
}
