import 'package:eupheus_app/myplans.dart';
import 'package:flutter/material.dart';
import 'package:eupheus_app/extensions.dart';

import 'dart:math' as math;

var topicIcons = {
  'attach_money': Icons.attach_money,
  'nature': Icons.nature,
  'rocket_launch': Icons.rocket_launch,
  'dinner_dining': Icons.dinner_dining,
  'psychology_alt': Icons.psychology_alt,
  'music_note': Icons.music_note,
  'location_city': Icons.location_city,
  'photo_camera': Icons.photo_camera,
  'animation': Icons.animation,
  'travel_explore': Icons.travel_explore,
  'perm_media': Icons.perm_media,
  'emoji_nature': Icons.emoji_nature,
  'videogame_asset': Icons.videogame_asset,
  'emoji_emotions': Icons.emoji_emotions,
  'self_improvement': Icons.self_improvement,
  'auto_fix_normal': Icons.auto_fix_normal,
  'egg_alt': Icons.egg_alt,
  'theaters': Icons.theaters,
  'hevc': Icons.hevc,
  'book': Icons.book,
};

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
            centerTitle: true,
            pinned: true,
            backgroundColor: '#FFA183'.toColor(),
            leading: Icon(Icons.shopping_cart),
            title: Text('Profile',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: Colors.white)),
            actions: <Widget>[Icon(Icons.settings), SizedBox(width: 8.0)]),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
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
                                    color: '#8C84EE'.toColor(),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25.0)),
                            Text("@JulieDiscovers02",
                                style: TextStyle(
                                    color: '#8C84EE'.toColor(),
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
                                  side: BorderSide(
                                    color: '#FFA183'.toColor(),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(16.0)),
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center),
                              child: Row(children: [
                                Icon(Icons.add),
                                Text(" Add Friends")
                              ])),
                          OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  foregroundColor: '#8C84EE'.toColor(),
                                  side: BorderSide(color: '#FFA183'.toColor()),
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w800),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(16.0)),
                                  padding: EdgeInsets.all(8.0),
                                  alignment: Alignment.center),
                              child: Row(children: [
                                Icon(Icons.leaderboard),
                                Text(" Leaderboard")
                              ]))
                        ]),
                  ]),
                  Card(
                      color: '#FFF7E4'.toColor(),
                      elevation: 4.0,
                      child: Column(children: [
                        SizedBox(height: 8.0),
                        Text("My Journey",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w700)),
                        Container(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        foregroundColor: '#8C84EE'.toColor(),
                                        side: BorderSide(
                                            color: '#FFA183'.toColor()),
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w800),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16.0)),
                                        padding: EdgeInsets.all(8.0),
                                        alignment: Alignment.center),
                                    child: Row(children: [
                                      Icon(Icons.calendar_month),
                                      Text(" 7 Days Streak")
                                    ])),
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        foregroundColor: '#8C84EE'.toColor(),
                                        side: BorderSide(
                                            color: '#FFA183'.toColor()),
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w800),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16.0)),
                                        padding: EdgeInsets.all(8.0),
                                        alignment: Alignment.center),
                                    child: Row(children: [
                                      Icon(Icons.video_library),
                                      Text(" 89 videos viewed")
                                    ])),
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        foregroundColor: '#8C84EE'.toColor(),
                                        side: BorderSide(
                                            color: '#FFA183'.toColor()),
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w800),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16.0)),
                                        padding: EdgeInsets.all(8.0),
                                        alignment: Alignment.center),
                                    child: Row(children: [
                                      Icon(Icons.shield),
                                      Text(" 2 challenges completed")
                                    ])),
                                OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                        foregroundColor: '#8C84EE'.toColor(),
                                        side: BorderSide(
                                            color: '#FFA183'.toColor()),
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.w800),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16.0)),
                                        padding: EdgeInsets.all(8.0),
                                        alignment: Alignment.center),
                                    child: Row(children: [
                                      Icon(Icons.military_tech),
                                      Text(" 5 badges earned")
                                    ]))
                              ],
                            )),
                      ])),
                  Card(
                      color: '#FFF7E4'.toColor(),
                      child: Column(children: [
                        SizedBox(height: 8.0),
                        Text("My Plans",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w700)),
                        SizedBox(height: 8.0),
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                foregroundColor: '#8C84EE'.toColor(),
                                side: BorderSide(color: '#FFA183'.toColor()),
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.w800),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0)),
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center),
                            child: Row(children: [
                              Check(),
                              Text("Watch "),
                              Text("Behind PTSD",
                                  style: TextStyle(fontStyle: FontStyle.italic))
                            ])),
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                foregroundColor: '#8C84EE'.toColor(),
                                side: BorderSide(color: '#FFA183'.toColor()),
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.w800),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0)),
                                padding: EdgeInsets.all(8.0),
                                alignment: Alignment.center),
                            child: Row(children: [
                              Check(),
                              Text("Watch "),
                              Text("The Moon Climate",
                                  style: TextStyle(fontStyle: FontStyle.italic))
                            ])),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("See more",
                                style: TextStyle(
                                    color: '#FFA183'.toColor(),
                                    fontWeight: FontWeight.w700)),
                            IconButton(
                                color: '#FFA183'.toColor(),
                                icon: Icon(Icons.keyboard_double_arrow_right),
                                onPressed: () {
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => const Myplans()));
                                })
                          ],
                        )
                      ])),
                  SizedBox(
                      width: 400,
                      child: Card(
                          color: '#FFF7E4'.toColor(),
                          child: Column(children: [
                            SizedBox(height: 8.0),
                            Text("Achievements",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)),
                            SizedBox(height: 8.0)
                          ])))
                ]));
          },
          childCount: 1,
        )), //SliverList childCount
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.5,
            crossAxisCount: 3,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 7.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                  decoration: ShapeDecoration(
                      shape: CircleBorder(
                          side: BorderSide(color: '#8C84EE'.toColor()))),
                  padding: EdgeInsets.all(6.0),
                  child: IconButton(
                    onPressed: () {},
                    iconSize: 40.0,
                    color:
                        Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(0.6),
                    icon: Icon(topicIcons.values.elementAt(index)),
                  ));
            },
            childCount: topicIcons.length,
          ),
        )
      ],
    );
  }
}

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return '#FFA183'.toColor();
      }
      return '#8C84EE'.toColor();
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
