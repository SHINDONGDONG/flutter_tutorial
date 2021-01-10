import 'package:flutter/material.dart';


class DataPage extends StatefulWidget {
  String data;
  DataPage({@required this.data});

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data page'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(widget.data.toString()),
            ),
            RaisedButton(onPressed: (){
              Navigator.of(context).pop('Abababa');
            },
            child: Text('뒤로이동'),
            )
          ],
        ),
      ),
    );
  }
}
