import 'package:flutter/material.dart';


class MediaQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQ'),
      ),
      body:Center(
        child: Container(
          //접속한 기기 가로/세로 길이를 전체사용
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size용
          //접속한 기기 가로/세로 길이를 반절만
          // width: MediaQuery.of(context).size.width/2,
          // height: MediaQuery.of(context).size.height*0.5,

          //가로를 배치할 위젯들 사이즈를 비율에 맞춰 표현하기
          child: Row(
            children: [
              Expanded(flex: 2),
              Expanded(flex: 1,)
            ],
          ),
        ),
      )

        );
  }
}
