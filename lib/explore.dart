import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        ToggleButton(icon: Icon(Icons.favorite), icon1: Icon(Icons.favorite_border_outlined)),
        ToggleButton(icon: Icon(Icons.star), icon1: Icon(Icons.star_border_outlined)),
        ToggleButton(icon: Icon(Icons.share), icon1: Icon(Icons.share_outlined)),
      ]),
    );
  }
  }



class ToggleButton extends StatefulWidget {
  const ToggleButton(
      {required this.icon, required this.icon1, super.key});

  final IconData icon;
  final IconData icon1;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool selected = false;
  IconData get icon => widget.icon;
  IconData get icon1 => widget.icon1;
  
  @override
  Widget build(BuildContext context) {

    return IconButton(
      isSelected: selected,
      icon: Icon(icon),
      selectedIcon: Icon(icon1),
      onPressed: (){setState(() {
              selected = !selected;
            });
            },
      iconSize: 35.0,
      color: Colors.purple,
    );
  }
}
