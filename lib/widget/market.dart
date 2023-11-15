import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  bool male = true;
  bool female = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset('assets/images/39.png'),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white, // 박스의 배경색
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // 그림자의 색상과 투명도
                  offset: const Offset(0, 6), // x축 방향으로 0, y축 방향으로 4의 오프셋
                  blurRadius: 10.0, // 흐림 정도
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/40.png',
                      scale: 1.8,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        '남',
                        style: TextStyle(
                            color: male ? Colors.black : Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      'ㅣ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Container(
                      child: Text(
                        '여',
                        style: TextStyle(
                            color: female ? Colors.black : Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/41.png',
                  scale: 2.5,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white, // 박스의 배경색
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // 그림자의 색상과 투명도
                    offset: const Offset(0, 4), // x축 방향으로 0, y축 방향으로 4의 오프셋
                    blurRadius: 4.0, // 흐림 정도
                  ),
                ],
              ),
              padding: const EdgeInsets.all(10),
              child: male
                  ? Image.asset('assets/images/37.png')
                  : Image.asset('assets/images/42.png'))
        ],
      ),
    );
  }
}
