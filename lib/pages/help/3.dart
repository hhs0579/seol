import 'package:flutter/material.dart';
import 'package:seol/bottom.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/%08dialog.dart';

class help3 extends StatefulWidget {
  const help3({super.key});

  @override
  State<help3> createState() => _help3State();
}

class _help3State extends State<help3> {
  bool a = false;
  bool a2 = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  bool f = false;
  bool g = false;
  bool h = false;
  bool i = false;
  String selectedReason = '';
  TextEditingController controller = TextEditingController();
  int currentLength = 0;

  int maxLength = 150;
  void updateReason(String reason) {
    setState(() {
      selectedReason = reason;
      a2 = false;
    });
  }

  @override
  void initState() {
    super.initState();
    // controller에 리스너 추가
    controller.addListener(() {
      setState(() {
        // 현재 길이 업데이트
        currentLength = controller.text.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: const Text(
          '회원 탈퇴',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Container(
          color: const Color(0xffE15353),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: width,
                        height: height * 0.2,
                        padding: const EdgeInsets.all(20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '주의하세요!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 24),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '탈퇴시 모든 쿠폰과 포인트가 자동으로 소멸되고,\n낙지곱창새우님의 모든 정보가 없어집니다!',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      a
                          ? Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              height: height * 0.75,
                              width: width,
                              child: Container(
                                  child: Column(
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text('설계장을 그만 이용하려는 이유는?',
                                      style: TextStyle(
                                          fontFamily: 'jiji',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        a2 = !a2;
                                      });
                                    },
                                    child: !a2
                                        ? Container(
                                            alignment: Alignment.center,
                                            height: height * 0.08,
                                            width: width * 0.85,
                                            decoration: BoxDecoration(
                                                color: selectedReason.isEmpty
                                                    ? Colors.white
                                                    : ColorList.black,
                                                border: selectedReason.isEmpty
                                                    ? Border.all(
                                                        color: ColorList.grey,
                                                        width: 1)
                                                    : const Border(),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Text(
                                              selectedReason.isEmpty
                                                  ? '내 탈퇴 사유 선택하기'
                                                  : selectedReason,
                                              style: TextStyle(
                                                  fontWeight:
                                                      selectedReason.isEmpty
                                                          ? FontWeight.normal
                                                          : FontWeight.bold,
                                                  fontSize: 16,
                                                  color: selectedReason.isEmpty
                                                      ? ColorList.black
                                                      : Colors.white),
                                            ),
                                          )
                                        : Container(
                                            alignment: Alignment.center,
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
                                                    '내 탈퇴사유 선택하기',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: ColorList.black),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      updateReason(
                                                          selectedReason =
                                                              '사용 빈도가 너무 낮아요');
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
                                                              color: ColorList
                                                                  .grey,
                                                              width: 1)),
                                                    ),
                                                    child: const Text(
                                                      '사용 빈도가 너무 낮아요',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff909090),
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      c = !c;
                                                      updateReason(
                                                          selectedReason =
                                                              '사고 싶은 상품이 없어요');
                                                    });
                                                  },
                                                  child: Container(
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
                                                    child: const Text(
                                                      '사고 싶은 상품이 없어요',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff909090),
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      d = !d;
                                                      updateReason(
                                                          selectedReason =
                                                              '불필요한 콘텐츠가 너무 많아요');
                                                    });
                                                  },
                                                  child: Container(
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
                                                    child: const Text(
                                                      '불필요한 콘텐츠가 너무 많아요',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff909090),
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      e = !e;
                                                      updateReason(
                                                          selectedReason =
                                                              '광고가 많아서 불편해요');
                                                    });
                                                  },
                                                  child: Container(
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
                                                    child: const Text(
                                                      '광고가 많아서 불편해요',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff909090),
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      f = !f;
                                                      updateReason(
                                                          selectedReason =
                                                              '셀러들이 너무 불친절해요');
                                                    });
                                                  },
                                                  child: Container(
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
                                                    child: const Text(
                                                      '셀러들이 너무 불친절해요',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff909090),
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      g = !g;
                                                      updateReason(
                                                          selectedReason =
                                                              '고객에 대한 관리가 미흡해요');
                                                    });
                                                  },
                                                  child: Container(
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
                                                    child: const Text(
                                                      '고객에 대한 관리가 미흡해요',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff909090),
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      h = !h;
                                                      updateReason(
                                                          selectedReason =
                                                              '다른 플랫폼이 더 유용해요');
                                                    });
                                                  },
                                                  child: Container(
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
                                                    child: const Text(
                                                      '다른 플랫폼이 더 유용해요',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff909090),
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      i = !i;
                                                      updateReason(selectedReason =
                                                          '이용이 불편하고 장애요인이 많아요');
                                                    });
                                                  },
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(),
                                                    ),
                                                    child: const Text(
                                                      '이용이 불편하고 장애요인이 많아요',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff909090),
                                                          fontSize: 14),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  selectedReason.isEmpty
                                      ? Container()
                                      : Container(
                                          width: width * 0.85,
                                          height: height * 0.28,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: ColorList.grey,
                                                width: 1),
                                          ),
                                          child: Column(children: [
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: const Text(
                                                '요청사항',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
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
                                          ]))
                                ],
                              )))
                          : Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              height: height * 0.5959,
                              width: width,
                              child: Container(
                                child: Image.asset(
                                  'assets/images/186.png',
                                  scale: 2,
                                ),
                              )),
                    ],
                  ),
                ),
              ),
              a
                  ? SizedBox(
                      width: width,
                      height: height * 0.1,
                      child: Row(
                        children: [
                          Container(
                            color: ColorList.black,
                            width: width * 0.8,
                            height: height * 0.1,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  '취소',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.2,
                            height: height * 0.1,
                            color: ColorList.lightgrey,
                            child: InkWell(
                              onTap: () {
                                if (selectedReason.isEmpty ||
                                    currentLength == 0) {
                                  return;
                                }
                                myAlert4(context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  '제출',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        setState(() {
                          a = true;
                        });
                      },
                      child: Container(
                        color: ColorList.black,
                        width: width,
                        height: height * 0.1,
                        alignment: Alignment.center,
                        child: const Text(
                          '이해해했어요!',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
            ],
          )),
    );
  }
}
