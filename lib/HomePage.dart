import 'package:flutter/material.dart';
import 'Candy.dart';
import 'Gummy.dart';
import 'Sour.dart';
import 'Taffy.dart';
import 'All.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Candy Shop ทุกอย่าง 5 บาท'),
        backgroundColor: Colors.red[300],
      ),
      body: 
            Center(
            child: Container(
            padding: const EdgeInsets.all(10.0),
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              children: [
                Card(
                  elevation: 4.0,
                  child: InkWell(
                  onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Candy()));
                },
                  child: Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                   Icon(
                        Icons.fastfood,
                        color:Colors.amber,
                        size: 100.0,
                      ),
                      Text(
                        'Candy',
                        textAlign: TextAlign.center,
                      ),
                      ],
                    ),
                     ],
                  ),
                  ),
                ),
                Card(
                  elevation: 4.0,
                  child: InkWell(
                  onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Gummy()));
                },
                  child: Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                   Icon(
                        Icons.child_care,
                        color:Colors.deepPurple,
                        size: 100.0,
                      ),
                      Text(
                        'Gummy',
                        textAlign: TextAlign.center,
                      ),
                    ],
                    ),
                     ],
                  ),
                ),
                ),
                Card(
                 elevation: 4.0,
                 child: InkWell(
                  onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Sour()));
                },
                  child: Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                   Icon(
                        Icons.group_work,
                        color:Colors.deepOrange,
                        size: 100.0,
                      ),
                      Text(
                        'Sour',
                        textAlign: TextAlign.center,
                      ),
                       ],
                    ),
                     ],
                ),
                ),
                ),
                Card(
                elevation: 4.0,
                child: InkWell(
                  onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Taffy()));
                },
                  child: Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                   Icon(
                        Icons.whatshot,
                        color:Colors.green,
                        size: 100.0,
                      ),
                      Text(
                        'Taffy',
                        textAlign: TextAlign.center,
                      ),
                      ],
                    ),
                     ],
                ),
                ),
                ),
                Card(
                  elevation: 4.0,
                  child: InkWell(
                  onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => All()));
                },
                  child: Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.center,
                  children: <Widget>[
                     Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                   Icon(
                        Icons.restaurant_menu,
                        color:Colors.blueGrey,
                        size: 100.0,
                      ),
                      Text(
                        'ALL',
                        textAlign: TextAlign.center,
                      ),
                    ],
                    ),
                     ],
                ),
                ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}