import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';

class payPage extends StatefulWidget {
  const payPage({super.key});

  @override
  State<payPage> createState() => _payPageState();
}

class _payPageState extends State<payPage> {
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  bool e = false;
  bool f = false;
  bool g = false;
  bool h = false;
  bool i = false;
  String selectedReason = '';
  void updateReason(String reason) {
    setState(() {
      selectedReason = reason;
      a = false;
    });
  }

  int currentLength = 0;

  int maxLength = 150;

  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    // 리스너 추가
    controller.addListener(() {
      if (currentLength != controller.text.length) {
        setState(() {
          currentLength = controller.text.length;
        });
      }
    });
  }

  @override
  void dispose() {
    // 리스너 제거
    controller.removeListener(() {});
    controller.dispose();
    super.dispose();
  }

  Widget buildDeliveryMemoSection() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    if (d) {
      // 직접 입력 선택 시 텍스트 필드 표시
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        alignment: Alignment.center,
        width: width * 0.85,
        height: height * 0.22,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: ColorList.grey, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    '직접입력',
                    style: TextStyle(color: ColorList.grey),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      a = !a;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: ColorList.grey,
                    size: 30,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: width * 0.8,
              height: height * 0.08,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorList.grey),
                  color: ColorList.lightgrey,
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: '배송 메모를 입력하세요',
                ),
                onSubmitted: (value) {
                  // 텍스트 필드 제출 시
                  setState(() {
                    selectedReason = value;
                    d = false; // 텍스트 필드 숨기기
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 20, top: 10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    '$currentLength/$maxLength',
                    style: TextStyle(fontSize: 12, color: ColorList.grey),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorList.grey, width: 1),
                        borderRadius: BorderRadius.circular(10)),
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedReason =
                              controller.text; // 텍스트 필드의 내용을 selectedReason에 할당
                          d = false; // 직접 입력 모드 종료 (텍스트 필드 숨김)
                        });
                      },
                      child: const Text(
                        '입력완료',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ],
            )
          ],
        ),
      );
    } else {
      // 선택 옵션 표시
      return InkWell(
        onTap: () {
          setState(() {
            a = !a;
          });
        },
        child: Container(
          alignment: Alignment.center,
          height: height * 0.08,
          width: width * 0.85,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: ColorList.grey, width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            selectedReason.isEmpty ? '배송 메모 선택하기' : selectedReason,
            style: TextStyle(
                fontSize: 16,
                color: selectedReason.isEmpty ? Colors.grey : Colors.black),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        centerTitle: true,
        title: const Text(
          '결제하기',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('주문자 정보',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            width: width,
                            height: height * 0.07,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '수령자 이름을 입력하세요.',
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey)),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            width: width,
                            height: height * 0.07,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '수령자 전화번호를 입력하세요.',
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey)),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: ColorList.grey,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          bottom: 25, left: 25, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('기본 배송지',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                padding: const EdgeInsets.all(4),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(color: ColorList.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  '나의 배송지',
                                  style: TextStyle(
                                      color: ColorList.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(30),
                            alignment: Alignment.center,
                            width: width,
                            height: height * 0.1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: ColorList.primary)),
                            child: const Text(
                              '서울시 강남구 도산대로 8길 17 2층',
                            ),
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
                                ? buildDeliveryMemoSection()
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
                                          child: const Text(
                                            '배송 메모 선택하기',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              updateReason(selectedReason =
                                                  '경비실에 맡겨주세요');
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
                                              '경비실에 맡겨주세요',
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
                                                  '택배함에 놓아주세요');
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
                                              '택배함에 놓아주세요',
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
                                              a = !a;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: width * 0.85,
                                            height: height * 0.06,
                                            decoration: const BoxDecoration(),
                                            child: const Text(
                                              '직접 입력',
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
                            height: 25,
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: ColorList.grey,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Image.asset('assets/images/180.png'),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: ColorList.grey,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('쿠폰/할인혜택',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 10,
                                ),
                                Image.asset('assets/images/181.png'),
                                const SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        e = !e;
                                      });
                                    },
                                    child: e
                                        ? Image.asset('assets/images/183.png')
                                        : Image.asset('assets/images/182.png'))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: ColorList.grey,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Image.asset('assets/images/184.png'),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: width,
                            height: 1,
                            color: ColorList.grey,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('결제 수단',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      f = !f;
                                      g = false;
                                      h = false;
                                      i = false;
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: width,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        border: f
                                            ? Border.all(color: Colors.blue)
                                            : Border.all(color: ColorList.grey),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Text('간편 결제',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          f = false;
                                          g = !g;
                                          h = false;
                                          i = false;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: width * 0.25,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            border: g
                                                ? Border.all(color: Colors.blue)
                                                : Border.all(
                                                    color: ColorList.grey),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Text('가상계좌',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          f = false;
                                          g = false;
                                          h = !h;
                                          i = false;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: width * 0.25,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            border: h
                                                ? Border.all(color: Colors.blue)
                                                : Border.all(
                                                    color: ColorList.grey),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Text('가상계좌',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          f = false;
                                          g = !g;
                                          h = false;
                                          i = false;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: width * 0.25,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            border: g
                                                ? Border.all(color: Colors.blue)
                                                : Border.all(
                                                    color: ColorList.grey),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Text('가상계좌',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
