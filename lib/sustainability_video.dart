import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:eupheus/extensions.dart';

class EarthVideo extends StatelessWidget {
  const EarthVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return EarthVideoScreen();
  }
}

class EarthVideoScreen extends StatefulWidget {
  const EarthVideoScreen({super.key});

  @override
  State<EarthVideoScreen> createState() => EarthVideoScreenState();
}

class EarthVideoScreenState extends State<EarthVideoScreen> {
  late VideoPlayerController _controller;
  // late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller =
        VideoPlayerController.asset('aivideos/Sustainability.mp4');
    _controller.addListener(() {
      setState(() {});
    });
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Complete the code in the next step.
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller)),
    )
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // Wrap the play or pause in a call to `setState`. This ensures the
        //     // correct icon is shown.
        //     setState(() {
        //       // If the video is playing, pause it.
        //       if (_controller.value.isPlaying) {
        //         _controller.pause();
        //       } else {
        //         // If the video is paused, play it.
        //         _controller.play();
        //       }
        //     });
        //   },
        //   // Display the correct icon depending on the state of the player.
        //   backgroundColor: '#FFA183'.toColor(),
        //   child: Icon(
        //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        //   ),
        // ),
        );
  }
}
