import 'package:flutter/material.dart';

class SustainabilityPage extends StatelessWidget {
  const SustainabilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // gives white 'canvas' page
      appBar: AppBar(
        title: const Text('Sustainability')
        automaticallyImplyLeading: false, // removes the auto back button
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop(); // pop means delete the page
        },
        icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Image.asset('images/eupheus_start_page.jpg')
        ]
      )
    );
  }
}