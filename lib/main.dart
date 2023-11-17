import 'package:flutter/material.dart';
import 'package:seol/bottom.dart';
import 'package:seol/model/logincheckmodel.dart';
import 'package:provider/provider.dart';
import 'package:seol/tutorial/1.dart';
import 'package:seol/widget/userProvider.dart';

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
        ChangeNotifierProvider(create: (context) => AgreementModel()),
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'Pretendard',
            primarySwatch: Colors.blue,
          ),
          home: const Bottom(showBottomSheet: false)),
    );
  }
}
