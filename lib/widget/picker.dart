// Function to show the bottom sheet
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seol/widget/userProvider.dart';

void showTopSizePicker(BuildContext context, UserProvider userProvider) {
  int selectedSizeIndex = 0;

  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      // This line sets the shape with rounded corners
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;
      return ClipRRect(
        child: SizedBox(
          height: 340,
          // Set this to the desired height for your picker
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  userProvider.top =
                      ['S', 'M', 'L', 'XL', 'XXL'][selectedSizeIndex];
                  Navigator.pop(context); // 모달을 닫습니다.
                },
                splashColor: Colors.transparent, // 물결 효과를 투명하게
                highlightColor: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  width: width,
                  height: 60,
                  child: const Text(
                    '완료',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: width,
                height: 50,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const Text(
                  '상의',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 200,
                child: CupertinoPicker(
                  itemExtent: 32.0, // Height of each item
                  onSelectedItemChanged: (int selectedIndex) {
                    // This is where you update the provider with the selected value
                    // Assuming sizes is a list ['S', 'M', 'L', 'XL', 'XXL']
                    selectedSizeIndex = selectedIndex;
                  },
                  children: const <Widget>[
                    Center(
                        child: Text(
                      'S',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'M',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'L',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'XL',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'XXL',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showBottomSizePicker(BuildContext context, UserProvider userProvider) {
  int selectedSizeIndex = 0;
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      // This line sets the shape with rounded corners
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;
      return ClipRRect(
        child: SizedBox(
          height: 340,
          // Set this to the desired height for your picker
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  userProvider.bottom =
                      ['S', 'M', 'L', 'XL', 'XXL'][selectedSizeIndex];
                  Navigator.pop(context); // 모달을 닫습니다.
                },
                splashColor: Colors.transparent, // 물결 효과를 투명하게
                highlightColor: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  width: width,
                  height: 60,
                  child: const Text(
                    '완료',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: width,
                height: 50,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const Text(
                  '하의',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 200,
                child: CupertinoPicker(
                  itemExtent: 32.0, // Height of each item
                  onSelectedItemChanged: (int selectedIndex) {
                    // This is where you update the provider with the selected value
                    // Assuming sizes is a list ['S', 'M', 'L', 'XL', 'XXL']
                    selectedSizeIndex = selectedIndex;
                  },
                  children: const <Widget>[
                    Center(
                        child: Text(
                      'S',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'M',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'L',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'XL',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'XXL',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showFootSizePicker(BuildContext context, UserProvider userProvider) {
  int selectedSizeIndex = 0;
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      // This line sets the shape with rounded corners
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;
      return ClipRRect(
        child: SizedBox(
          height: 340,
          // Set this to the desired height for your picker
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  userProvider.foot = [
                    '220',
                    '225',
                    '230',
                    '235',
                    '240',
                    '245',
                    '250',
                    '255',
                    '260',
                    '265',
                    '270',
                    '275',
                    '280',
                    '285',
                    '290',
                    '295',
                    '300',
                    '305',
                    '310'
                  ][selectedSizeIndex];
                  Navigator.pop(context); // 모달을 닫습니다.
                },
                splashColor: Colors.transparent, // 물결 효과를 투명하게
                highlightColor: Colors.transparent,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  width: width,
                  height: 60,
                  child: const Text(
                    '완료',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: width,
                height: 50,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: const Text(
                  '신발',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 200,
                child: CupertinoPicker(
                  itemExtent: 32.0, // Height of each item
                  onSelectedItemChanged: (int selectedIndex) {
                    // This is where you update the provider with the selected value
                    // Assuming sizes is a list ['S', 'M', 'L', 'XL', 'XXL']
                    selectedSizeIndex = selectedIndex;
                  },
                  children: const <Widget>[
                    Center(
                        child: Text(
                      'S',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'M',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'L',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'XL',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                    Center(
                        child: Text(
                      'XXL',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
