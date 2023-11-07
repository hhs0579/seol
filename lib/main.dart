import 'package:flutter/material.dart';
import 'package:seol/model/logincheckmodel.dart';
import 'package:seol/tutorial/1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AgreementModel())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'Pretendard',
            primarySwatch: Colors.blue,
          ),
          home: const tutorial1()),
    );
  }
}
