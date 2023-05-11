import 'package:flutter/material.dart';
import 'package:eupheus_app/extensions.dart';
import 'package:eupheus_app/me.dart';
import 'dart:math' as math;


class Myplans extends StatelessWidget {
  const Myplans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#FFF7E4'.toColor(),
      body: CustomScrollView(
      slivers: [
        SliverAppBar(
            centerTitle: true,
            pinned: true,
            backgroundColor: '#FFA183'.toColor(),
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            } ,icon: Icon(Icons.arrow_back)),
            title: Text('My Plans',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: Colors.white))),
            
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              padding: EdgeInsets.all(8.0),
              child: Column(children: [
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
                                Icon(Icons.diversity_3),
                                Text(" 2 activities shared with friends")
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
                                Icon(Icons.add),
                                Text(" Add Plan")
                              ]))]),
                Card(
                  elevation: 0.0,
                      color: '#FFF7E4'.toColor(),
                      child: Column(children: [
                        SizedBox(height:8.0),
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
                              Icon(Icons.smart_display),
                              Text(" Watch "),
                              Text("Behind PTSD",
                                  style: TextStyle(fontStyle: FontStyle.italic)),
                                Align(alignment: Alignment.centerRight,
                                child: Icon(Icons.group))
                            ])),
                            SizedBox(height:8.0),
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
                              Icon(Icons.smart_display),
                              Text(" Watch "),
                              Text("Cooking 101: Mastering Carbs",
                                  style: TextStyle(fontStyle: FontStyle.italic)),
                                Align(alignment: Alignment(1.0, 0.0),
                                child: Icon(Icons.group))
                            ])),
                            SizedBox(height:8.0),
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
                              Icon(Icons.smart_display),
                              Text(" Watch "),
                              Text("The Moon Climate",
                                  style: TextStyle(fontStyle: FontStyle.italic))
                            ])),
                            SizedBox(height:8.0),
                        
                      ])),
              ],));},
              childCount: 1,)),
              ]));
  
  }
}