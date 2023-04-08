import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        ToggleButton(),
        Icon(Icons.star, size: 35.0, color: Colors.purple),
        Icon(Icons.share_outlined, size: 35.0, color: Colors.purple),
      ]),
    );
  }
}

class ToggleButton extends StatefulWidget {
  const ToggleButton(
    {super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      isSelected: selected,
      icon: Icon(Icons.favorite_border_outlined),
      selectedIcon: Icon(Icons.favorite),
      onPressed: () {
        setState(() {
          selected = !selected;
        });
      },
      iconSize: 35.0,
      color: Colors.purple,
    );
  }
}
