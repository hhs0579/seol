import 'package:flutter/material.dart';
import 'package:seol/bottom.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/%08dialog.dart';

class help2 extends StatefulWidget {
  const help2({super.key});

  @override
  State<help2> createState() => _help2State();
}

class _help2State extends State<help2> {
  bool a = false;
  bool a2 = false;
  bool b = false;
  bool c = false;
  bool d = false;
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
          '고객센터',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Container(
          color: const Color(0xff2E73C3),
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
                              '여러분의 목소리가 필요해요!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 24),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '고객님들의 작은 목소리 하나하나가 모여,\n설계장을 더 튼튼하게 만들 수 있어요!',
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
                                  const Text('고객센터를 이용하려는 이유는?',
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
                                                  ? '내 요청사항 선택하기'
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
                                            height: height * 0.265,
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
                                                    '내 요청 사항 선택하기',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: ColorList.black),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      updateReason(selectedReason =
                                                          '배송/주문/결제 등에서 문제가 발생했어요!');
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
                                                      '배송/주문/결제 등에서 문제가 발생했어요!',
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
                                                              '앱 내 불편한 점이 있어요!');
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
                                                      '앱 내 불편한 점이 있어요!',
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
                                                              '불량 업체를 발견했어요!');
                                                    });
                                                  },
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: width * 0.85,
                                                    height: height * 0.06,
                                                    decoration:
                                                        const BoxDecoration(),
                                                    child: const Text(
                                                      '불량 업체를 발견했어요!',
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
                            color:
                                (selectedReason.isEmpty || currentLength == 0)
                                    ? ColorList.grey
                                    : ColorList.black,
                            width: width * 0.5,
                            height: height * 0.1,
                            child: InkWell(
                              onTap: () {
                                if (selectedReason.isEmpty ||
                                    currentLength == 0) {
                                  return;
                                }
                                myAlert3(context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  '제출',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: width * 0.5,
                            height: height * 0.1,
                            color: ColorList.lightgrey,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  '취소',
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
