import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class YoutubeWidget extends StatefulWidget {
  @override
  _YoutubeWidgetState createState() => _YoutubeWidgetState();
}

class _YoutubeWidgetState extends State<YoutubeWidget> {
  //사용할 패키지 소스와 변수선언
  String videoPath = "https://youtu.be/ORiTTaVY6mM";
  String videold = "ORiTTaVY6mM";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube Widget'),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: videold,
            flags: YoutubePlayerFlags(
              mute: false,
              autoPlay: true,
            )
          ),
        ),
      ),
    );
  }
}
