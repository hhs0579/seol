import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:seol/utils/color.dart';
import 'package:seol/widget/star.dart';
import 'package:seol/widget/util.dart';

class ReviewBottom extends StatefulWidget {
  const ReviewBottom({super.key});

  @override
  State<ReviewBottom> createState() => _ReviewBottomState();
}

class _ReviewBottomState extends State<ReviewBottom> {
  final List<File?> _images = List.filled(5, null);
  late final _ratingController;
  late double _rating;

  final double _userRating = 3.0;
  final int _ratingBarMode = 1;
  final double _initialRating = 2.0;
  final bool _isRTLMode = false;
  final bool _isVertical = false;

  IconData? _selectedIcon;

  @override
  void initState() {
    super.initState();
    _ratingController = TextEditingController(text: '3.0');
    _rating = _initialRating;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: height * 0.8,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
            ),
            Expanded(
              child: PageView(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(),
                            const Text(
                              '나의 후기 작성하기',
                              style: TextStyle(
                                  fontFamily: 'jiji',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18),
                            ),
                            const Icon(Icons.close,
                                color: Colors.black, size: 25)
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          '1단계',
                          style: TextStyle(
                              fontFamily: 'jiji',
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Image.asset('assets/images/145.png'),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.5, color: ColorList.lightgrey),
                              borderRadius: BorderRadius.circular(10)),
                          width: width,
                          height: height * 0.48,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '일루네스 반팔티',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              const Text('어떠셨나요?',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(
                                height: 20,
                              ),
                              RatingBar.builder(
                                  minRating: 1,
                                  itemSize: 40,
                                  itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Color(0xffFF881B),
                                      ),
                                  updateOnDrag: true,
                                  onRatingUpdate: (rating) =>
                                      debugPrint(rating.toString())),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('별점을 선택해주세요!',
                                  style: TextStyle(
                                      color: ColorList.grey, fontSize: 16))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(left: 0, right: 0),
                          color: Colors.white,
                          child: Column(children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(),
                                  const Text(
                                    '나의 후기 작성하기',
                                    style: TextStyle(
                                        fontFamily: 'jiji',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18),
                                  ),
                                  const Icon(Icons.close,
                                      color: Colors.black, size: 25)
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1000),
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1000),
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            )),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              '2단계',
                              style: TextStyle(
                                  fontFamily: 'jiji',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              color: ColorList.grey,
                              width: width,
                              height: 1,
                            ),
                            Container(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.5, color: ColorList.grey),
                                      borderRadius: BorderRadius.circular(15)),
                                  width: width * 0.95,
                                  height: 40,
                                  child: Row(
                                    children: [
                                      const Text(
                                        '제목',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        width: 1,
                                        height: 24,
                                        color: ColorList.grey,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        width: width * 0.5,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '제목을 입력해주세요',
                                              hintStyle: TextStyle(
                                                  color: ColorList.grey,
                                                  fontSize: 14)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: width * 0.95,
                              height: height * 0.4,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5, color: ColorList.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text('내용'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    color: ColorList.grey,
                                    width: 1,
                                    height: height * 0.36,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            height: height * 0.24,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: ColorList.lightgrey,
                                            ),
                                            child: TextField(
                                              maxLines: 10,
                                              maxLength:
                                                  200, // Added 200 character limit
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    '내용을 200자 이내로 작성해주세요!',
                                                hintStyle: TextStyle(
                                                  color: ColorList.grey,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, bottom: 10),
                                          child: Row(
                                            children: [
                                              Text('이미지 첨부',
                                                  style: TextStyle(
                                                      color: ColorList.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14)),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '최대 5장까지 등록이 가능해요! ${_images.where((image) => image != null).length}/5)',
                                                style: TextStyle(
                                                    color: ColorList.grey,
                                                    fontSize: 10),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: _images
                                                  .asMap()
                                                  .entries
                                                  .map((entry) {
                                                int index = entry.key;
                                                File? image = entry.value;

                                                return Row(
                                                  children: [
                                                    if (index > 0) ...[
                                                      const SizedBox(
                                                        width: 8,
                                                      ),
                                                    ],
                                                    Container(
                                                      width: 60,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        color: index == 0
                                                            ? ColorList
                                                                .lightgrey
                                                            : const Color
                                                                .fromARGB(
                                                                255,
                                                                245,
                                                                245,
                                                                245,
                                                              ),
                                                        border: index == 0
                                                            ? Border.all(
                                                                color: ColorList
                                                                    .primary)
                                                            : null,
                                                      ),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      child: TextButton(
                                                        onPressed: () =>
                                                            _onPressedUploadImage(
                                                                index),
                                                        child: Stack(
                                                          children: [
                                                            if (image ==
                                                                null) ...[
                                                              Center(
                                                                child: Icon(
                                                                  Icons
                                                                      .camera_alt_rounded,
                                                                  color: index ==
                                                                          0
                                                                      ? ColorList
                                                                          .primary
                                                                      : const Color
                                                                          .fromARGB(
                                                                          255,
                                                                          212,
                                                                          212,
                                                                          212,
                                                                        ),
                                                                ),
                                                              ),
                                                            ] else ...[
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  image:
                                                                      DecorationImage(
                                                                    image: FileImage(
                                                                        image),
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                            if (index == 0) ...[
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                  left: 22,
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              5),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              5),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ])),
                      Positioned(
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              color: ColorList.black,
                              alignment: Alignment.center,
                              height: 80,
                              width: width,
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
                              )),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Future<void> _onPressedUploadImage(int index) async {
    XFile? xFile = await Utils.pickImageFromGallery();

    if (xFile != null) {
      setState(() {
        _images[index] = File(xFile.path);
      });
    } else {
      Fluttertoast.showToast(msg: '해당 파일을 불러오는 중 오류가 발생하였습니다.');
    }
  }
}
