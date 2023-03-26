import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getSocialAction(icon: Icon(Icons.heart_broken_outlined)),
        _getSocialAction(icon: Icon(Icons.star_border_outlined)),
        _getSocialAction(icon: Icon(Icons.share_outlined)),
      ]),
    );
  }

  Widget _getSocialAction({Icon}) {
    return SizedBox(
      width: 60.0,
      height: 60.0,
      child: Column(children: [
        Icon(icon, size: 35.0, color: Colors.white), // HELP LOL
        // Padding(
        //   padding: EdgeInsets.only(top: 2.0),
        //   child: Text(title, style: TextStyle(fontSize: 12.0),)
        // ),
      ]),
    );
  }
}
