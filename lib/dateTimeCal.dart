import 'package:flutter/material.dart';

class DateTimeCal extends StatefulWidget {
  @override
  _DateTimeCalState createState() => _DateTimeCalState();
}

class _DateTimeCalState extends State<DateTimeCal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeCal'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('현재일자와 모든 정보 : '+(new DateTime.now().toString())),
              Text('현재 연도 : ' + new DateTime.now().year.toString()),
              Text('현재 월 : ' + new DateTime.now().month.toString()),
              Text('현재 일 : ' + new DateTime.now().day.toString()),
              Text('현재 시간 : ' + new DateTime.now().hour.toString()),
              Text('현재 분 : ' + new DateTime.now().minute.toString()),

              SizedBox(height: 10,),

              Text('현재 일자 및 시간에 더하기 add',
                style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),),
              Text('하루 더하기 : '+new DateTime.now().add(Duration(days: 1)).toString()),
              Text('한시간 더하기 : '+new DateTime.now().add(Duration(hours: 1)).toString()),
              Text('십분 더하기 : '+new DateTime.now().add(Duration(minutes: 10)).toString()),

              Text('현재 일자 및 시간에 빼기 subtrack',
                style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),),
              Text('하루 빼기 : '+new DateTime.now().subtract(Duration(days: 1)).toString()),
              Text('한시간 빼기 : '+new DateTime.now().subtract(Duration(hours: 1)).toString()),
              Text('십분 빼기 : '+new DateTime.now().subtract(Duration(minutes: 10)).toString()),

            ],
          ),

        ),

      ),
    );
  }
}
