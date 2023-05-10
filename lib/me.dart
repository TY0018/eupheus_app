import 'package:flutter/material.dart';
import 'package:eupheus_app/extensions.dart';

class myAccount extends StatelessWidget {
  const myAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      // Add a floating search bar to the app
      SliverAppBar(
          centerTitle: true,
          pinned: true,
          backgroundColor: '#8C84EE'.toColor(),
          // Use a Material design search bar
          title: Text('Profile',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white)),
          actions: <Widget>[Icon(Icons.settings)]),

      Scaffold(
          body: Column(children: [
        Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/eupheus_avatar.jpg'),
                ),
                Column(
                  children: [
                    Text("Julie",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16.0)),
                    Text("/nJulieDiscovers02",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            fontSize: 14.0))
                  ],
                )
              ],
            ))
      ])),
    ]);
  }
}
