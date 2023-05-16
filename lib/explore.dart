import 'package:eupheus/extensions.dart';
import 'package:flutter/material.dart';
import 'package:eupheus/explore_video.dart';
import 'package:eupheus/sustainability_video.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [AiPages(), 
      
      Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.favorite, size: 25.0, color: '#8C84EE'.toColor()),
                  SizedBox(height: 5),
                  Text("30k"),
                  SizedBox(height: 10),
                  Icon(Icons.star, size: 25.0, color: '#8C84EE'.toColor()),
                  SizedBox(height: 5),
                  Text("25k"),
                  SizedBox(height: 10),
                  Icon(Icons.share_outlined,
                      size: 25.0, color: '#8C84EE'.toColor()),
                  SizedBox(height: 5),
                  Text("10k"),
                ],
              ),
            ),
          )]));}}


class AiPages extends StatefulWidget {
  const AiPages({super.key});

  @override
  State<AiPages> createState() => _AiPagesState();
}

class _AiPagesState extends State<AiPages> {

  final _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: const [
        SustainabilityPage(),
        CulturePage(),
      ],
    );
  }
}
class SustainabilityPage extends StatelessWidget {
  const SustainabilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [EarthVideo(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("How To: Environmental Sustainability",
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
                            text: "Topic: Sustainability",
                            style: TextStyle(color: Colors.black)),
                            
                        TextSpan(
                            text: '\n#Sustainability #SavemyWorld #Earth',
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
          )],
    ));
  }
}

class CulturePage extends StatelessWidget {
  const CulturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [VideoCS(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Introduction to Cultural Sustainability",
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
                            text: "Topic: Sustainability",
                            style: TextStyle(color: Colors.black)),
                            
                        TextSpan(
                            text: '\n#Sustainability #CulturePreservation',
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
          )],
    ));
  }
}
