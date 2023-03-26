import 'package:eupheus_app/sustainability.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/rounded_rectangle_border.dart';

const int itemCount = 20;

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        key:key,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
        scrollDirection: Axis.vertical,
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item ${(index + 1)}'), // to change to actual topics
            leading: const Icon(Icons.nature),
            tileColor: Color.fromARGB(238, 235, 234, 198),
            shape: CustomRoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            onTap: () {
              debugPrint("enter topic widget");
            },
          );
        },
      ),
    );
  }
}

class CustomRoundedRectangleBorder extends RoundedRectangleBorder {
  const CustomRoundedRectangleBorder({
    side = BorderSide.none,
    borderRadius = BorderRadius.zero,
  }) : super(side: side, borderRadius: borderRadius);

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..addRRect(borderRadius.resolve(textDirection).toRRect(rect));
  }
}
