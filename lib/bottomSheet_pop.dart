import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheet_pop extends StatefulWidget {
  @override
  _BottomSheet_popState createState() => _BottomSheet_popState();
}

class _BottomSheet_popState extends State<BottomSheet_pop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet_pop'),
      ),
      body: Center(
        child: InkWell(
          child: Text('show moadlBottomSheet 1'),
          onTap: ()=>iosShowBotton(context),
        ),
      ),
    );
  }
}

iosShowBotton(BuildContext context){
  return showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) => CupertinoActionSheet(
      title: Text('시트'),
      actions: [
        CupertinoActionSheetAction(
            child: Text('액션'),
            onPressed: (){print('액션1');},
        ),CupertinoActionSheetAction(
            child: Text('액션2'),
            onPressed: (){print('액션2');}
        ),CupertinoActionSheetAction(
            child: Text('액션3'),
            onPressed: (){print('액션3');},
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text('닫기'),
        onPressed: ()=> Navigator.of(context).pop(context),
      ),
    )

  );
}


showBottomNotification({BuildContext context}){
  return showModalBottomSheet(context: context,
      builder: (context)=>Container(
        height: MediaQuery.of(context).size.height*0.3,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: [
            FlatButton(
              onPressed: (){Navigator.of(context).pop();},
              child: Text('닫기',style: TextStyle(color: Colors.red),),
            ),
            Text('BottomSheet Notification 1'),

          ],
        ),
      )
  );
}