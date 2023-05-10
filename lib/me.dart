import 'package:flutter/material.dart';
import 'package:eupheus_app/extensions.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

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

      SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
              padding: EdgeInsets.all(8.0),
              child: Column(children: [
                Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        foregroundImage:
                            AssetImage('images/eupheus_avatar.JPG'),
                        radius: 60,
                      ),
                      Column(
                        children: [
                          Text("Julie",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 25.0)),
                          Text("@JulieDiscovers02",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 18.0))
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                foregroundColor: '#8C84EE'.toColor(),
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.w800),
                                side:
                                        BorderSide(color: '#FFA183'.toColor(), 
                                        ),
                                shape: RoundedRectangleBorder(
                                    
                                    borderRadius: BorderRadius.circular(16.0)),
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center),
                            child: Row(children: [
                              Icon(Icons.add),
                              Text("Add Friends")
                            ])),
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                foregroundColor: '#8C84EE'.toColor(),
                                side:
                                        BorderSide(color: '#FFA183'.toColor()),
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.w800),
                                shape: RoundedRectangleBorder(
                                    
                                    borderRadius: BorderRadius.circular(16.0)),
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center),
                            child: Row(children: [
                              Icon(Icons.leaderboard),
                              Text("Leaderboard")
                            ]))
                      ]),
                ]),
                Card(
                    child: Column(
                  children: [
                    Text("My Journey",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                    OutlinedButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(Icons.calendar_month),
                          Text("7 Days Streak")
                        ])),
                    OutlinedButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(Icons.video_library),
                          Text("89 videos viewed")
                        ])),
                    OutlinedButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(Icons.shield),
                          Text("2 challenges completed")
                        ])),
                    OutlinedButton(
                        onPressed: () {},
                        child: Row(children: [
                          Icon(Icons.military_tech),
                          Text("5 badges earned")
                        ]))
                  ],
                )),
                Card(child: Text("My Plans")),
                Card(child: Text("Achievements"))
              ]));
        }, childCount: 1),
      )
    ]);
  }
}
