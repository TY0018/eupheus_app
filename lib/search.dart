import 'package:eupheus_app/sustainability.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return SustainabilityPage();
              },
            ),
          );
        },
        child: const Text('Sustainability'),
      ),
    );
  }
}
