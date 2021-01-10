import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_james/button.dart';
import 'package:flutter_james/customAppbar.dart';
import 'package:flutter_james/dataPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('James Flutter Buttons'),
      ),
      body:Center(
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
            )
          ],
        ),

      ),
    );
  }
}
