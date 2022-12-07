import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.red[400],
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.4,
          ),
          Text(
            'KOKO',
            style: TextStyle(
                color: Colors.white,
                fontSize: 80,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          Text(
            'K O P S',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: "MagicalStylish",
                decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
