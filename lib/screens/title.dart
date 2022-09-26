import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TitleArea extends StatelessWidget {
  final title;
  final subtitle;
  const TitleArea({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Text(
            subtitle,
            style: const TextStyle(
              color: Color.fromARGB(255, 8, 85, 148),
            ),
          ),
          label: const Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
        )
      ]),
    );
  }
}
