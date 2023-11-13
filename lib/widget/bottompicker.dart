import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showPickerModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 300,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                children: [
                  buildPicker(['항목 1', '항목 2', '항목 3']), // 첫 번째 페이지
                  buildPicker(['옵션 A', '옵션 B', '옵션 C']), // 두 번째 페이지
                  buildPicker(['선택지 1', '선택지 2', '선택지 3']), // 세 번째 페이지
                ],
              ),
            ),
            // 페이지 인디케이터나 닫기 버튼 등 추가 컨트롤이 있을 수 있습니다.
          ],
        ),
      );
    },
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    ),
    isScrollControlled: true, // 이것을 true로 설정하여 전체 화면으로 만들 수 있습니다.
  );
}

Widget buildPicker(List<String> items) {
  return CupertinoPicker(
    itemExtent: 32.0,
    onSelectedItemChanged: (int index) {
      // 선택된 항목에 대한 처리
    },
    children: items.map((item) => Text(item)).toList(),
  );
}
