import 'package:flutter/material.dart';
import 'package:seol/utils/color.dart';

class MyClothes2 extends StatefulWidget {
  final List<String> listItem;
  final String imagePath;

  const MyClothes2({
    Key? key,
    required this.listItem,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<MyClothes2> createState() => _MyClothes2State();
}

class _MyClothes2State extends State<MyClothes2> {
  var valueSel;
  bool a = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(widget.imagePath),
                  const SizedBox(height: 20),
                  const Text(
                    '1. 등록할 내 옷의 별명을 입력하세요',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    '예: OO한 옷 **옷 OOO인 **옷',
                    style: TextStyle(fontSize: 12, color: ColorList.grey),
                  ),
                  Text(
                    '(기본 무지티,프린팅 반팔티,야상,내가아끼는 청바지 등)',
                    style: TextStyle(fontSize: 12, color: ColorList.grey),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: width * 0.7,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const TextField(),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '2. 등록할 내옷의 계절 종류 색상을 \n선택해주세요',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildDropdownButton(),
                      const SizedBox(width: 40),
                      _buildColorDropdown(),
                    ],
                  ),
                  const SizedBox(height: 20),
                  a
                      ? Image.asset(
                          'assets/images/123.png',
                          scale: 2,
                        )
                      : Container(),
                  Container(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          _buildCompleteButton(),
        ],
      ),
    );
  }

  Widget _buildDropdownButton() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: ColorList.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        underline: const SizedBox(),
        hint: Text(
          '종류',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: ColorList.black),
        ),
        elevation: 0,
        value: valueSel,
        onChanged: (value) {
          setState(() {
            valueSel = value;
          });
        },
        items: widget.listItem.map((valueItem) {
          return DropdownMenuItem(
            value: valueItem,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  valueItem,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: ColorList.black),
                ),
              ],
            ),
          );
        }).toList(),
        dropdownColor: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildColorDropdown() {
    return InkWell(
      onTap: () {
        setState(() {
          a = !a;
        });
      },
      child: Container(
        padding: const EdgeInsets.only(left: 7, right: 1),
        height: 50,
        width: 80,
        decoration: BoxDecoration(
          border: Border.all(color: ColorList.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '색상',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: ColorList.black,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCompleteButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 80,
        color: ColorList.black,
        child: const Text(
          '작성 완료',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
