import 'package:flutter/material.dart';
import 'package:eupheus_app/extensions.dart';
import 'package:eupheus_app/quiz_video.dart';
import 'dart:math' as math;

class Challenges extends StatelessWidget {
  const Challenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Challenges",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20.0),
          ),
          backgroundColor: '#FFA183'.toColor(),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(
                          image: AssetImage('images/Quiz1_logo.png'),
                          fit: BoxFit.cover)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Quiz()));
                      },
                      clipBehavior: Clip.antiAlias,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        padding: EdgeInsets.zero,
                        foregroundColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        surfaceTintColor: Colors.transparent,
                      ),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Week 3 Challenge",
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                color: '#8C84EE'.toColor(),
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700),
                          ))),
                ),
              ]),
        ));
  }
}
