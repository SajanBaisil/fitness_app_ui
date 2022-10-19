

import 'package:fitness_app/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MediaQuery(data: MediaQueryData(), child: MyApp())
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return const MediaQuery(data: MediaQueryData(), child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    ));
  }
}

