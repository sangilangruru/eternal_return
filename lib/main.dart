import 'package:eternal_return/widget/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // status바 색상 변경
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // 투명색
    ));

    return const MaterialApp(
      // 디버그 표시를 없앤다.
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
