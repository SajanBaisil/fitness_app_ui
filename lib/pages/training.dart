import 'package:fitness_app/screens/title.dart';
import 'package:fitness_app/training/training_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Training extends StatefulWidget {
  const Training({super.key});

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  final ScrollController myscrollControler = ScrollController();
  Color appBarcolor = Colors.grey[200]!;
  int selectedindex = 0;
  double fontsize = 27;

  @override
  void initState() {
    myscrollControler.addListener(() {
      if (myscrollControler.offset >= 54) {
        setState(() {
          appBarcolor = Colors.white;
          fontsize = 20;
        });
      } else if (myscrollControler.offset <= 54 &&
          myscrollControler.offset >= 0) {
        setState(() {
          appBarcolor = Colors.grey[200]!;
          fontsize = 27;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        controller: myscrollControler,
        slivers: [
          trainingappBar(appBarcolor, fontsize),
          SliverList(
              delegate: SliverChildListDelegate([
            const TitleArea(title: 'your program', subtitle: 'Details'),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 160,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 9, 27, 164),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                      topRight: Radius.circular(80),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Next Workout',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Legs Toning and',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const Text(
                        'Glutes Workout at Home',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.timer,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '68 min',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40)),
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_right,
                                  size: 40,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 30),
                        height: 70,
                        width: double.infinity,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 110, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "You're doing great!",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'keep it up',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Text(
                                'and stick it your plan',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              )
                            ],
                          ),
                        )),
                    Positioned(
                      top: 29,
                      child: Image.asset(
                        'assets/fittness/back.png',
                        height: 70,
                      ),
                    ),
                    Positioned(
                        bottom: 2,
                        child: Image.asset('assets/fittness/runner.png',
                            height: 100)),
                  ],
                ),
              ),
            ),
            const TitleArea(title: 'Area of focus', subtitle: 'more'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(5, 5),
                          blurRadius: 2),
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(-5, -5),
                          blurRadius: 2)
                    ],
                  ),
                  child: Center(
                    child: Image.asset('assets/fittness/area1.png'),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(5, 5),
                          blurRadius: 5),
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(-5, -5),
                          blurRadius: 2)
                    ],
                  ),
                  child: Center(
                    child: Image.asset('assets/fittness/area2.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(5, 5),
                          blurRadius: 5),
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(-5, -5),
                          blurRadius: 2)
                    ],
                  ),
                  child: Center(
                    child: Image.asset('assets/fittness/area3.png'),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(5, 5),
                          blurRadius: 5),
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(-5, -5),
                          blurRadius: 2)
                    ],
                  ),
                  child: Center(
                    child: Image.asset('assets/fittness/area1.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ]))
        ],
      ),
    );
  }
}
