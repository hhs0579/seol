import 'package:flutter/material.dart';

class MarketProduct extends StatelessWidget {
  const MarketProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Image.asset('assets/images/72.png'),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Image.asset('assets/images/73.png'),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Image.asset('assets/images/73.png'),
        )
      ],
    );
  }
}
