import 'package:fitness_app/pages/bodyPart.dart';
import 'package:fitness_app/pages/training.dart';
import 'package:fitness_app/screens/appbar.dart';
import 'package:fitness_app/screens/body_measurement.dart';
import 'package:fitness_app/screens/diet_container.dart';
import 'package:fitness_app/screens/meals.dart';
import 'package:fitness_app/screens/title.dart';
import 'package:fitness_app/screens/water.dart';
import 'package:fitness_app/screens/water_glass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  changeindex(value) {
    setState(() {
      selectedindex = value;
    });
  }

  final List list = [
    BodyPart(),
    Training(),
    BodyPart(),
    Training(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200]!,
      body: list[selectedindex],
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 16, 38, 166),
              Color.fromARGB(255, 143, 157, 236),
            ])),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: changeindex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.directions_run_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.apple_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: ''),
          ]),
    );
  }
}
