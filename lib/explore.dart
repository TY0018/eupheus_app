import 'package:eupheus_app/extensions.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // user post (at the very back)
          // Container(
          //   color: Colors.deepPurple[300],
          // ),

          // user name and caption
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Sustainability",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Introduction to Cultural Sustainability",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' #Sustainability #CulturePreservation',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic,
                                color: Colors.black)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // buttons
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.favorite, size: 25.0, color: '#8C84EE'.toColor()),
                  SizedBox(height: 10),
                  Text("30k"),
                  SizedBox(height: 20),
                  Icon(Icons.star, size: 25.0, color: '#8C84EE'.toColor()),
                  SizedBox(height: 10),
                  Text("25k"),
                  SizedBox(height: 20),
                  Icon(Icons.share_outlined,
                      size: 25.0, color: '#8C84EE'.toColor()),
                  SizedBox(height: 20),
                  Text("10k"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class ToggleButton extends StatefulWidget {
//   const ToggleButton({super.key});

//   @override
//   State<ToggleButton> createState() => _ToggleButtonState();
// }

// class _ToggleButtonState extends State<ToggleButton> {
//   bool selected = false;

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       isSelected: selected,
//       icon: Icon(Icons.favorite_border_outlined),
//       selectedIcon: Icon(Icons.favorite),
//       onPressed: () {
//         setState(() {
//           selected = !selected;
//         });
//       },
//       iconSize: 35.0,
//       color: '#8C84EE'.toColor(),
//     );
//   }
// }

