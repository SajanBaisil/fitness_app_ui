import 'package:fitness_app/pages/training.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../pages/body_part.dart';

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
    const BodyPart(),
    const Training(),
    const BodyPart(),
    const Training(),
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
            icon: const Icon(
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
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/fittness/tab_1.png',
                  height: 40,
                ),
                activeIcon: Image.asset(
                  'assets/fittness/tab_1s.png',
                  height: 40,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/fittness/tab_2.png',
                  height: 40,
                ),
                activeIcon: Image.asset(
                  'assets/fittness/tab_2s.png',
                  height: 40,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/fittness/tab_3.png',
                  height: 40,
                ),
                activeIcon: Image.asset(
                  'assets/fittness/tab_3s.png',
                  height: 40,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/fittness/tab_4.png',
                  height: 40,
                ),
                activeIcon: Image.asset(
                  'assets/fittness/tab_4s.png',
                  height: 40,
                ),
                label: ''),
          ]),
    );
  }
}
