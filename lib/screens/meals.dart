import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Meals extends StatelessWidget {
  const Meals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      alignment: Alignment.topLeft,
      height: 210,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              StackCurve(
                  img: 'assets/fittness/breakfast.png',
                  pcolor: Color.fromARGB(255, 238, 111, 92),
                  scolor: Color.fromARGB(255, 244, 146, 131),
                  threefood: 'Bread,\nPeanut butter,\nApple',
                  type: 'BreakFast',
                  cal: '502'),
              StackCurve(
                pcolor: Color.fromARGB(255, 15, 124, 233),
                scolor: Color.fromARGB(255, 73, 176, 228),
                img: 'assets/fittness/lunch.png',
                type: 'Lunch',
                cal: '602',
                threefood: 'Salmon,\nMixed Veggies,\nAvocado',
              ),
              StackCurve(
                pcolor: Color.fromARGB(255, 238, 66, 117),
                scolor: Color.fromARGB(255, 231, 109, 145),
                img: 'assets/fittness/snack.png',
                cal: '200',
                type: 'Snack',
                threefood: 'Samosa,\nPazhampori,\nTea',
              ),
              StackCurve(
                pcolor: Color.fromARGB(255, 237, 119, 35),
                scolor: Color.fromARGB(255, 243, 177, 133),
                img: 'assets/fittness/dinner.png',
                cal: '574',
                type: 'Dinner',
                threefood: 'Chappathi,\nGravy,\nChicken',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StackCurve extends StatelessWidget {
  final String img;
  final Color pcolor;
  final Color scolor;
  final String threefood;
  final String type;
  final String cal;

  const StackCurve(
      {super.key,
      required this.img,
      required this.pcolor,
      required this.scolor,
      required this.threefood,
      required this.type,
      required this.cal});

  @override
  Widget build(BuildContext context) {
    return CurvedCard(
        img: img,
        color1: pcolor,
        color2: scolor,
        threefood: threefood,
        type: type,
        cal: cal);
  }
}

class CurvedCard extends StatelessWidget {
  final String img;
  final Color color1;
  final Color color2;
  final String threefood;
  final String type;
  final String cal;
  const CurvedCard(
      {super.key,
      required this.img,
      required this.color1,
      required this.color2,
      required this.threefood,
      required this.type,
      required this.cal});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color1, color2]),
        // boxShadow: [
        //   BoxShadow(color: color1, blurRadius: 10, offset: const Offset(0, 3))
        // ],
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(60)),
      ),
      height: 170,
      width: 110,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -30,
            left: 10,
            child: SizedBox(
              height: 70,
              width: 70,
              child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.3),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image.asset(img),
                  )),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 10),
                child: Text(
                  type,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  threefood,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Wrap(
                  spacing: 3,
                  children: [
                    Text(
                      cal,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'kcal',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
