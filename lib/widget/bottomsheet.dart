import 'package:flutter/material.dart';

void showBottomSheets(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    context: context,
    builder: (context) {
      return InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        splashColor: Colors.transparent, // 물결 효과를 투명하게
        highlightColor: Colors.transparent,
        child: Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: MediaQuery.of(context).size.height * 0.45,
            child: Image.asset(
              'assets/images/33.png',
              scale: 2.5,
            )),
      );
    },
  );
}
void BuyBottom(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    context: context,
    builder: (context) {
      return InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        splashColor: Colors.transparent, // 물결 효과를 투명하게
        highlightColor: Colors.transparent,
        child: Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: MediaQuery.of(context).size.height * 0.45,
            child:Column(),
            )
      );
    },
  );
}