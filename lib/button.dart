import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ButtonWidget extends StatefulWidget {
  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {

  var Text1 = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button dart'),
        ),
      body: Center(
        child: Container(
          child: Center(
            child: Column(
              children: [
                TextButton(
                    onPressed: (){Toast1 ('TextBUtton');},
                    child: Text('TextBUtton')),
                BackButton(),
                CloseButton(),
                FloatingActionButton(
                    child: Icon(Icons.check),
                    onPressed: (){Toast1 ('FloatingActionButton');}),
                OutlineButton(
                  child: Text('OutlineButton'),
                  onPressed: (){Toast1 ('OutlineButton');},
                ),
                RawMaterialButton(
                  child: Text('RawMaterialButton'),
                  onPressed: (){Toast1 ('RawMaterialButton');},
                ),
                CupertinoButton(child: Text('CupertionButton'), onPressed: (){
                  Toast1('CupertionButton');
                }),
                PopupMenuButton(
                  child: Text('POP'),
                  itemBuilder: (context) =>[
                    PopupMenuItem(child: Text('PopupMenu 1'),
                    value: 'popup menu 1',
                    ),
                    PopupMenuItem(child: Text('PopupMenu 2'),
                    value: 'popup menu 2',
                    ),
                  ],
                    ),
                    DropdownButton(
                      hint: Text('DrowDownButton'),
                      items: [
                        DropdownMenuItem(
                            child: Text('1'),
                            value: 1,
                        ),
                        DropdownMenuItem(
                            child: Text('2'),
                            value: 2,
                        ),
                      ],
                      onChanged: (int value){},
                ),
                MaterialButton(
                    child: Text('MaterialButton'),
                    onPressed: (){}),
                InkWell(
                  child: Text('InkWell BUtton'),
                  onTap: (){},
                ),
                GestureDetector(
                  child: Text('GestureDetector'),
                  onTap: (){},
                ),
                FlatButton(
                    onPressed: (){},
                    color: Colors.black,
                    child: Text('FlatButton',
                    style: TextStyle(color: Colors.redAccent),
                    )),
                IconButton(icon: Icon(Icons.check_circle ),
                    onPressed: (){}),
                FlatButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                    child: Text('뒤로가기')
                ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}

void Toast1 (var Text1){
  Fluttertoast.showToast(msg: Text1,
  gravity: ToastGravity.BOTTOM,
  fontSize: 20.0,
  backgroundColor: Colors.redAccent,
  toastLength: Toast.LENGTH_SHORT,
  textColor: Colors.white);
}
