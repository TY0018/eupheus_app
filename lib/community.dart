import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class VirtualCommunity extends StatelessWidget {
  const VirtualCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Community());}}

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}


class _CommunityState extends State<Community> {

@override
  void initState(){
  super.initState();
  SystemChrome.setPreferredOrientations([

      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
  ]);
}

@override
void dispose(){
  SystemChrome.setPreferredOrientations([
  
    DeviceOrientation.portraitUp,
  
  ]);
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [Expanded(child: Image(image:AssetImage('images/communitydemo.png'))), Align(alignment: Alignment.topLeft,child: IconButton(onPressed:() {},
      icon: Icon(Icons.arrow_back)))],
    ));
  }
}