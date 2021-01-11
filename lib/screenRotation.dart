import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class ScreenRotation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenRocation'),
      ),
      body: Center(
        child: OrientationBuilder(
          builder: (context,orientation){
            return Text('화면 회전 감지값 : ${orientation.toString()}');
          },
        ),

      ),
    );
  }
}

@override
void initState(){
  //어넺나 화면을고정
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft
  ]);
  // super.initState();
}

@override
void dispose(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,

  ]);
  // super.dispose();
}