import 'package:flutter/material.dart';
import 'package:seol/bottom.dart';
import 'package:seol/pages/search/3.dart';

void myAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      var height = MediaQuery.of(context).size.height;
      return AlertDialog(
        content: Container(
          height: height * 0.68,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Bottom(
                            showBottomSheet: true), // 여기에 새로운 페이지 위젯을 넣으세요.
                      ),
                    );
                  },
                  splashColor: Colors.transparent, // 물결 효과를 투명하게
                  highlightColor: Colors.transparent,
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.topRight,
                      child: const Icon(Icons.close))),
              SizedBox(
                height: height * 0.55,
                child: Image.asset(
                  'assets/images/139.png',
                  scale: 2,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 20,
                      height: 40,
                      child: Icon(
                        Icons.bookmark_border_outlined,
                        size: 20,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Search3()),
                        );
                      },
                      child: const Row(
                        children: [
                          Text(
                            '상품 보러가기',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
        ),
        contentPadding: EdgeInsets.zero, // 내부 여백 제거
        insetPadding: const EdgeInsets.all(10), // AlertDialog 외부 여백 조정
        // AlertDialog의 다른 속성들...
      );
    },
  );
}

void myAlert2(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var width = MediaQuery.of(context).size.width;
      return AlertDialog(
        content: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Bottom(
                    showBottomSheet: true), // 여기에 새로운 페이지 위젯을 넣으세요.
              ),
            );
          },
          splashColor: Colors.transparent, // 물결 효과를 투명하게
          highlightColor: Colors.transparent,
          child: Image.asset(
            'assets/images/81.png',
            fit: BoxFit.cover,
            width: width * 0.8, // 전체 화면 너비의 80%
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // 둥근 모서리 설정
        ),
        contentPadding: EdgeInsets.zero, // 내부 여백 제거
        insetPadding: const EdgeInsets.all(10), // AlertDialog 외부 여백 조정
        // AlertDialog의 다른 속성들...
      );
    },
  );
}
