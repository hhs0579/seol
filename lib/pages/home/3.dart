import 'package:flutter/material.dart';
import 'package:seol/pay/pay.dart';
import 'package:seol/utils/color.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  bool isChecked = false;
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  int productPrice = 23000; // 상품 하나의 가격
  int totalPrice = 0; // 총합계 금액

  void calculateTotal() {
    int count = (a ? 1 : 0) + (b ? 1 : 0) + (c ? 1 : 0) + (d ? 1 : 0);
    totalPrice = count * productPrice;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
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
                          height: height * 0.2,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            )
                          ]),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(Icons.arrow_back_ios,
                                          color:
                                              Color.fromARGB(255, 79, 69, 69)),
                                    ),
                                  ),
                                  const Icon(Icons.shopping_bag_outlined,
                                      color: Colors.black, size: 30),
                                  SizedBox(width: width * 0.1)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 6, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: isChecked,
                                        checkColor: Colors.white, // 체크 표시 색상
                                        activeColor: Colors.black, // 체크박스 배경 색상
                                        onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value!;
                                            a = isChecked;
                                            b = isChecked;
                                            c = isChecked;
                                            d = isChecked;
                                          });
                                        },
                                      ),
                                      const Text('전체선택/해제',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Image.asset(
                                      'assets/images/177.png',
                                      scale: 2,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ),
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        a = !a;
                                        isChecked = a && b && c && d;
                                        calculateTotal();
                                        // a 변경 시 isChecked도 함께 변경
                                      });
                                    },
                                    child: Padding(
                                      padding: (a || isChecked)
                                          ? const EdgeInsets.only(left: 0)
                                          : const EdgeInsets.only(left: 2),
                                      child: Image.asset(
                                        isChecked || a
                                            ? 'assets/images/178.png'
                                            : 'assets/images/179.png',
                                        scale: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  color: ColorList.grey,
                                  width: width * 0.9,
                                  height: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        b = !b;
                                        isChecked = a && b && c && d;
                                        calculateTotal();
                                        // a 변경 시 isChecked도 함께 변경
                                      });
                                    },
                                    child: Padding(
                                      padding: (b || isChecked)
                                          ? const EdgeInsets.only()
                                          : const EdgeInsets.only(left: 2),
                                      child: Image.asset(
                                        isChecked || b
                                            ? 'assets/images/178.png'
                                            : 'assets/images/179.png',
                                        scale: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  color: ColorList.grey,
                                  width: width * 0.9,
                                  height: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        c = !c;
                                        isChecked = a && b && c && d;
                                        calculateTotal();
                                        // a 변경 시 isChecked도 함께 변경
                                      });
                                    },
                                    child: Padding(
                                      padding: (c || isChecked)
                                          ? const EdgeInsets.only()
                                          : const EdgeInsets.only(left: 2),
                                      child: Image.asset(
                                        isChecked || c
                                            ? 'assets/images/178.png'
                                            : 'assets/images/179.png',
                                        scale: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  color: ColorList.grey,
                                  width: width * 0.9,
                                  height: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        d = !d;
                                        isChecked = a && b && c && d;
                                        calculateTotal();
                                        // a 변경 시 isChecked도 함께 변경
                                      });
                                    },
                                    child: Padding(
                                      padding: (d || isChecked)
                                          ? const EdgeInsets.only()
                                          : const EdgeInsets.only(left: 2),
                                      child: Image.asset(
                                        isChecked || d
                                            ? 'assets/images/178.png'
                                            : 'assets/images/179.png',
                                        scale: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  color: ColorList.grey,
                                  width: width * 0.9,
                                  height: 1,
                                ),
                              ],
                            ),
                          ),
                        )
                        // 탭
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    (a || b || c || d == true)
                        ? Container(
                            height: height * 0.1,
                            width: width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: const Offset(0, 1))
                              ],
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                            ),
                            child: Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: width * 0.49,
                                      padding: const EdgeInsets.only(top: 16),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text('상품금액'),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  Text('배송비'),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [Text('23,000원')],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [Text('3,000원')],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: height * 0.06,
                                      width: 1,
                                      color: ColorList.grey,
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      padding: const EdgeInsets.only(
                                          top: 16, right: 30),
                                      width: width * 0.49,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Text(
                                            '총 합계',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '${totalPrice + 3000}원',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                            ),
                          )
                        : Container(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const payPage()));
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: width,
                          height: height * 0.1,
                          color: ColorList.black,
                          child: const Text('구매하기',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
              ],
            )));
  }
}
