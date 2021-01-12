import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_james/bottomSheet_pop.dart';
import 'package:flutter_james/button.dart';
import 'package:flutter_james/children_listMap.dart';
import 'package:flutter_james/customAppbar.dart';
import 'package:flutter_james/dataPage.dart';
import 'package:flutter_james/dateTimeCal.dart';
import 'package:flutter_james/image_picker.dart';
import 'package:flutter_james/notifications.dart';
import 'package:flutter_james/screenRotation.dart';
import 'package:flutter_james/share.dart';
import 'package:flutter_james/youtubeWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

// Widget rollingWidget(int index) =>Container(
//   child: Center(
//     child: Text('${++index} 번 뷰'),
//   ),
// );

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('James Flutter Buttons'),
      ),
      body: PageView(
        onPageChanged: (int pageViewIndex){

        },
        children: [
          Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Button_Dart 페이지로 이동'),
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>ButtonWidget()
                    ),
                );
              },
            ),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('CustomAppbar scroll'),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=>CustomAppbar()
                  ),
                );
              },
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text('Input Data : Horororo'),
                  ),
                  RaisedButton(onPressed: () async {
                    String backValue = await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>DataPage(data:'Horororo')
                    ),
                    );
                    print(backValue);
                  },
                  child: Text('데이터 페이지이동'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Container(
                  ),
                  RaisedButton(onPressed: ()  {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>Notifications()
                    ),
                    );
                  },
                    child: Text('Notifications'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Container(
                  ),
                  RaisedButton(onPressed: ()  {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>YoutubeWidget()
                    ),
                    );
                  },
                    child: Text('Youtube Widget'),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20,),
            // Container(
            //   child: Column(
            //     children: [
            //       Container(
            //       ),
            //       RaisedButton(onPressed: ()  {
            //         Navigator.of(context).push(MaterialPageRoute(
            //             // builder: (context)=>ScreenRotation()
            //         ),
            //         );
            //       },
            //         child: Text('화면회전 감지'),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Container(
                  ),
                  RaisedButton(onPressed: ()  {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>Children()
                    ),
                    );
                  },
                    child: Text('Children'),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20,),
            // Container(
            //   child: Column(
            //     children: [
            //       Container(
            //       ),
            //       RaisedButton(onPressed: ()  {
            //         Navigator.of(context).push(MaterialPageRoute(
            //             // builder: (context)=>ImagePicker()
            //         ),
            //         );
            //       },
            //         child: Text('ImagePicker'),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Container(
                  ),
                  RaisedButton(onPressed: ()  {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>DateTimeCal()
                    ),
                    );
                  },
                    child: Text('Date Time Calcurator'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Container(
                  ),
                  RaisedButton(onPressed: ()  {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>BottomSheet_pop()
                    ),
                    );
                  },
                    child: Text('BottomSheet_pop'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Container(
                  ),
                  RaisedButton(onPressed: ()  {

                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>Share()
                    ),
                    );
                  },
                    child: Text('Share'),
                  ),
                ],
              ),
            ),

          ],
        ),


      ),
          Container(
            child: Center(
              child: Text('2번 VIEW'),
            ),
          )
        ],
      )
      );

  }
}
