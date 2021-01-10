import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('CustomScroll & Silver '),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
              (context,int index) =>Container(
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 16
                ),
                child: Text('Silver List ${++index}'),
              ),
            childCount: 20,
          ),

          ),
          SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,

              ),
            delegate: SliverChildBuilderDelegate(
                (context,int index)=>Container(
                  color: Colors.orange[100 * index],
                  margin: EdgeInsets.all(3),
                  child: Center(
                    child: Text('Item ${++index}'),
                  ),
                ),
              childCount: 20
            ),
          ),
        ],
      ),
    );
  }
}
