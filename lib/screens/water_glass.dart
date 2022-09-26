import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WaterGlass extends StatelessWidget {
  const WaterGlass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 189, 213, 232),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 173, 195, 230),
              blurRadius: 10,
              offset: Offset(0, 5),
            )
          ]),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 30,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 260,
              child: const Text(
                'Prepare your stomach for lunch with one or two glass of water',
                maxLines: 2,
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ),
          Positioned(
              top: -25,
              left: -5,
              child: Image.asset(
                'assets/fittness/glass.png',
                height: 80,
                width: 80,
              ))
        ],
      ),
    );
  }
}
