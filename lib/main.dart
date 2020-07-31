import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:iamrich/one.dart';
import 'GetData_and_Class.dart';

void main() =>
    MaterialApp(
        home : taskone(),
    );

class taskone extends StatefulWidget {
  @override
  _taskoneState createState() => _taskoneState();
}

class _taskoneState extends State<taskone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ddd'),
      ),
    );
  }
}


//class taskone extends StatefulWidget {
//  @override
//  _taskoneState createState() => _taskoneState();
//}
//
//class _taskoneState extends State<taskone> {
//
//
////final String name = 'USD';
//
////    getData('GBP');
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body  : Container(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            Padding(
//              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
//              child: Card(
//                color: Colors.white,
//                shape : RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),
//                ),
//                child : Row(
//                  children: <Widget>[
//                    Text(
//                      'chartName rate for description : ',
//                    ),
//                    Text(
//                      'code',
//                      style: TextStyle(
//                        backgroundColor: Colors.deepPurple,
//                      ),
//                    ),
//                    Text('rate'),
//                  ],
//                ),
//              ),
//            ),
//            DropdownButton<String>(items: null,)
//          ],
//        ),
//      ),
//    );
//  }
//}
//
