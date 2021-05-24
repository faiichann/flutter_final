import 'package:flutter/material.dart';
import 'main.dart';
import 'HomePage.dart';
import 'object.dart';

class Thank extends StatefulWidget {
  final List<Dish> _cart;

  Thank(this._cart);
  @override
  _ThankState createState() => _ThankState(this._cart);
}

class _ThankState extends State<Thank> {
  _ThankState(this._cart);
    List<Dish> _cart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "CHECK OUT",
        ),
        backgroundColor: Colors.red[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/thankyou.jpg'),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Container(
                    width: 400,
                    height: 60,
                    child: Text(
                      'ทั้งหมดราคา '+((_cart.length)*5).toString()+' บาท',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
            ),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.circular(10.0)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Back to Shop',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
            ),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(10.0)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyApp()));
                },
                child: Text(
                  'Log out',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}