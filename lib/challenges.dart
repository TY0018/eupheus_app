import 'package:flutter/material.dart';
import 'package:eupheus/extensions.dart';
import 'package:eupheus/quiz_video.dart';
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
   
        padding: EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Quiz()));
                },
                clipBehavior: Clip.antiAlias,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  padding: EdgeInsets.zero,
                  foregroundColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                ),
                child: Stack(
                  children: [
                    Image(
                        image: AssetImage('images/challenge_logo.png'),
                        fit: BoxFit.cover,
                        isAntiAlias: true,
                        alignment: Alignment.center,
                        height: double.infinity,
                        width: double.infinity
                        ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text("Week 3 Challenge",
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  color: '#8C84EE'.toColor(),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700)),
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
