import 'package:flutter/material.dart';

class Children extends StatelessWidget {
  List<Widget> widgetListData = [Text("1"),Text("2"),Text("3"),Text("4"),Text("5")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Childeren'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: widgetListData.map((e) => e).toList(),
            ),
          ),
        ),
      )
    );
  }
}
