import 'package:flutter/material.dart';
import 'package:webtoon_app/screen/home_screen.dart';
import 'package:webtoon_app/service/api_service.dart';

void main() {
  ApiService().getTodaysToons();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: HomeScreen(),
    );
  }
}
