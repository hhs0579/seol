import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seol/login/6-2.dart';
import 'package:seol/login/6.dart';

import '../utils/color.dart';
import '../widget/picker.dart';
import '../widget/userProvider.dart';

class login5 extends StatefulWidget {
  const login5({super.key});

  @override
  State<login5> createState() => _login5State();
}

class _login5State extends State<login5> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  late TextEditingController _controller2;
  late FocusNode _focusNode2;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _focusNode = FocusNode();
    _controller2 = TextEditingController();
    _focusNode2 = FocusNode();

    _focusNode.addListener(_handleFocusChange);
    _controller.addListener(_handleTextChange);
    _focusNode2.addListener(_handleFocusChange); // 추가
    _controller2.addListener(_handleTextChange); // 추가
  }

  Color _backgroundColor1 = ColorList.grey;
  Color _backgroundColor2 = ColorList.grey;

  void _handleFocusChange() {
    setState(() {
      _backgroundColor1 = _focusNode.hasFocus || _controller.text.isNotEmpty
          ? Colors.black
          : ColorList.grey;

      _backgroundColor2 = _focusNode2.hasFocus || _controller2.text.isNotEmpty
          ? Colors.black
          : ColorList.grey;
    });
  }

  void _handleTextChange() {
    setState(() {
      _backgroundColor1 =
          _controller.text.isNotEmpty ? Colors.black : ColorList.grey;

      _backgroundColor2 =
          _controller2.text.isNotEmpty ? Colors.black : ColorList.grey;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    _controller2.dispose(); // 여기서 dispose합니다.
    _focusNode2.dispose(); // 여기서 dispose합니다.
    super.dispose();
  }

  bool get _isTextFilled =>
      _controller.text.isNotEmpty && _controller2.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
              )),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SizedBox(
          height: height,
          width: width,
          child: Consumer<UserProvider>(
              builder: (context, model, _) => Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: const Color(0xff7C7C7C),
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: const Color(0xff7C7C7C),
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff7C7C7C),
                                          border: Border.all(
                                              color: const Color(0xff7C7C7C),
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 40, right: 40, bottom: 40),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${model.nickname}님의 사이즈 \n정보를 알려주세요',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 26),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40, right: 40),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: width * 0.37,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: _backgroundColor1,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            '키ㅣ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: width * 0.1,
                                            child: TextField(
                                              controller:
                                                  _controller, // 컨트롤러를 할당합니다.
                                              focusNode: _focusNode,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                              onChanged: (value) {
                                                model.height =
                                                    int.tryParse(value) ?? 0;
                                              },
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "0",
                                                hintStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                                counterText: '',
                                              ),
                                              textAlign: TextAlign.right,
                                              maxLength: 3,
                                            ),
                                          ),
                                          const Text(
                                            ' cm',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: width * 0.37,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: _backgroundColor2,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            '몸무게ㅣ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            width: width * 0.1,
                                            child: TextField(
                                              controller:
                                                  _controller2, // 컨트롤러를 할당합니다.
                                              focusNode: _focusNode2,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                              onChanged: (value) {
                                                model.weight =
                                                    int.tryParse(value) ?? 0;
                                              },
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: const InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "0",
                                                hintStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                                counterText: '',
                                              ),
                                              textAlign: TextAlign.right,
                                              maxLength: 3,
                                            ),
                                          ),
                                          const Text(
                                            ' kg',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40, right: 40),
                                child: Column(
                                  children: [
                                    if (_isTextFilled)
                                      InkWell(
                                        onTap: () {
                                          showTopSizePicker(
                                              context,
                                              Provider.of<UserProvider>(context,
                                                  listen: false));
                                        },
                                        child: Container(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 20, right: 20),
                                            width: width,
                                            height: height * 0.2,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: model.top == ''
                                                  ? [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        spreadRadius: 0,
                                                        blurRadius: 6,
                                                        offset:
                                                            const Offset(0, 4),
                                                      ),
                                                    ]
                                                  : [], // Empty list means no shadow

                                              border: Border.all(
                                                  color: (model.top != '')
                                                      ? Colors.black
                                                      : Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: (model.top != '')
                                                      ? Image.asset(
                                                          'assets/images/3.png',
                                                          scale: 2,
                                                        )
                                                      : Image.asset(
                                                          'assets/images/3-2.png',
                                                          scale: 2,
                                                        ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      right: 30),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Text(
                                                        '상의',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Column(
                                                        children: [
                                                          const SizedBox(
                                                            height: 20,
                                                          ),
                                                          const Text(
                                                            '사이즈',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          const SizedBox(
                                                            height: 5,
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height: 30,
                                                            width: 50,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .black)),
                                                            child: (model.top ==
                                                                    '')
                                                                ? const Text(
                                                                    '?',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  )
                                                                : Text(
                                                                    model.top,
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    if (_isTextFilled && model.top != '')
                                      InkWell(
                                        onTap: () {
                                          showBottomSizePicker(
                                              context,
                                              Provider.of<UserProvider>(context,
                                                  listen: false));
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20),
                                          width: width,
                                          height: height * 0.2,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: model.bottom == ''
                                                  ? [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        spreadRadius: 0,
                                                        blurRadius: 6,
                                                        offset:
                                                            const Offset(0, 4),
                                                      ),
                                                    ]
                                                  : [], // Empty list means no shadow

                                              border: Border.all(
                                                  color: (model.bottom != '')
                                                      ? Colors.black
                                                      : Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: (model.bottom != '')
                                                    ? Image.asset(
                                                        'assets/images/4.png',
                                                        scale: 2,
                                                      )
                                                    : Image.asset(
                                                        'assets/images/4-2.png',
                                                        scale: 2,
                                                      ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 30),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Text(
                                                      '하의',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Column(
                                                      children: [
                                                        const SizedBox(
                                                          height: 20,
                                                        ),
                                                        const Text(
                                                          '사이즈',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: 30,
                                                          width: 50,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .black)),
                                                          child:
                                                              (model.bottom ==
                                                                      '')
                                                                  ? const Text(
                                                                      '?',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    )
                                                                  : Text(
                                                                      model
                                                                          .bottom,
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    if (_isTextFilled &&
                                        model.bottom != '' &&
                                        model.top != '')
                                      InkWell(
                                        onTap: () {
                                          showFootSizePicker(
                                              context,
                                              Provider.of<UserProvider>(context,
                                                  listen: false));
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              left: 20, right: 20),
                                          width: width,
                                          height: height * 0.2,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: model.foot == ''
                                                  ? [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        spreadRadius: 0,
                                                        blurRadius: 6,
                                                        offset:
                                                            const Offset(0, 4),
                                                      ),
                                                    ]
                                                  : [], // Empty list means no shadow

                                              border: Border.all(
                                                  color: (model.foot != '')
                                                      ? Colors.black
                                                      : Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: (model.foot != '')
                                                    ? Image.asset(
                                                        'assets/images/5.png',
                                                        scale: 2,
                                                      )
                                                    : Image.asset(
                                                        'assets/images/5-2.png',
                                                        scale: 2,
                                                      ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    right: 30),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Text(
                                                      '신발',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Column(
                                                      children: [
                                                        const SizedBox(
                                                          height: 20,
                                                        ),
                                                        const Text(
                                                          '사이즈',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: 30,
                                                          width: 50,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .black)),
                                                          child:
                                                              (model.foot == '')
                                                                  ? const Text(
                                                                      '?',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    )
                                                                  : Text(
                                                                      model
                                                                          .foot,
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                        )
                                                      ],
                                                    ),
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
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                      (_isTextFilled &&
                              model.bottom != '' &&
                              model.top != '' &&
                              model.foot != '')
                          ? InkWell(
                              onTap: () {
                                (model.isMale)
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const login6(), // 여기에 새로운 페이지 위젯을 넣으세요.
                                        ),
                                      )
                                    : Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const login6_2(), // 여기에 새로운 페이지 위젯을 넣으세요.
                                        ),
                                      );
                              },
                              splashColor: Colors.transparent, // 물결 효과를 투명하게
                              highlightColor: Colors.transparent,
                              child: Container(
                                alignment: Alignment.center,
                                width: width,
                                height: 80,
                                color: Colors.blue,
                                child: Text(
                                  '${model.nickname}님의 사이즈 완성하기',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          : Container(
                              alignment: Alignment.center,
                              width: width,
                              height: 80,
                              color: const Color(0xffE4E4E5),
                              child: const Text(
                                '입력완료',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                    ],
                  )),
        ));
  }
}
