import 'package:flutter/material.dart';
import 'object.dart';
import 'thank.dart';

class Cart extends StatefulWidget {
  final List<Dish> _cart;

  Cart(this._cart);

  @override
  _CartState createState() => _CartState(this._cart);
}

class _CartState extends State<Cart> {
  _CartState(this._cart);

  List<Dish> _cart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Colors.red[200],
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0,bottom: 4.0),
          child: _container(),
          ),
        ],
      ),
      body: _listView(),
    );
  }

ListView _listView(){
  return
            ListView.builder(
          itemCount: _cart.length,
          itemBuilder: (context, index) {
            var item = _cart[index];
            return 
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
              child: Card(
                elevation: 4.0,
                child: ListTile(
                  leading: item.image,
                  title: Text(item.name),
                  trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                      ),
                      onTap: () {
                        setState(() {
                          _cart.remove(item);
                        });
                      }),
                ),
              ),
            );
           
          },
       );
}
  Container _container(){
    return  Container(
              // height: 50,
              // width: 250,
              decoration: BoxDecoration(
                  color: Colors.red[500], borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Thank(this._cart)));
                },
                child: Text(
                  'ชำระเงิน',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            );
  }
}