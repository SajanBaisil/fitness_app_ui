
import 'package:fitness_app/screens/appbar.dart';
import 'package:fitness_app/screens/body_measurement.dart';
import 'package:fitness_app/screens/diet_container.dart';
import 'package:fitness_app/screens/meals.dart';
import 'package:fitness_app/screens/title.dart';
import 'package:fitness_app/screens/water.dart';
import 'package:fitness_app/screens/water_glass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';import 'package:flutter/src/widgets/container.dart';


import 'package:flutter/src/widgets/framework.dart';

class BodyPart extends StatefulWidget {
  const BodyPart({super.key});

  @override
  State<BodyPart> createState() => _BodyPartState();
}

class _BodyPartState extends State<BodyPart> {
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
      body: CustomScrollView(
        controller: myscrollControler,
        slivers: [
          appBar(appBarcolor, fontsize),
          SliverList(
              delegate: SliverChildListDelegate([
            const TitleArea(title: 'Mediterranean diet', subtitle: 'Details'),
            const DietContainer(),
            const TitleArea(title: ' Meals Today', subtitle: 'Customize'),
            const Meals(),
            const TitleArea(title: 'Body Measurement', subtitle: 'today'),
            const BodyMeasurement(),
            const TitleArea(title: 'Water', subtitle: 'Aqua SmartBottle'),
            const Water(),
            const WaterGlass()
          ])),
        ],
      )
    );
  }
}