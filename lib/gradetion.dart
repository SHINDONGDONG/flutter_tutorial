import 'package:flutter/material.dart';

class GradetionF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GradetionF'),
        ),
        body: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.blue,Colors.orange,Colors.black])),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      gradient:RadialGradient(
                        colors: [
                          Colors.red,Colors.blue,Colors.orange,Colors.white,Colors.yellow
                        ]
                      )
                ),
            ),
              ],
          ),
        )
        ));
  }
}
