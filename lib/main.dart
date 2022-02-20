import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            // mainaxissize (min) will let the column to shrink to enough space just to contains everything in it.
            mainAxisSize: MainAxisSize.max,
            // // verticaldirection determines the positions of the whole column
            // // verticalDirection: VerticalDirection.up,
            // // setting the padding of components inside the column widget
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // // crossAxisAlignment will affect how the components look inside the column widget
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: 100.0,
                // // in order to configure margin,
                // // we need to have edgeinsets, here we have synmetric, fromlrtb or only
                // margin: EdgeInsets.all(20.0),
                // padding: EdgeInsets.all(20.0),
                color: Colors.red,
                child: Text('Container 1'),
              ),
              //configure the padding between containers
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.yellow,
                    child: Text('Container 2'),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                    child: Text('sub-container'),
                  ),
                ],
              ),
              Container(
                width: 100.0,
                color: Colors.blue,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
