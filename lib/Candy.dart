import 'package:flutter/material.dart';
import 'cart.dart';
import 'object.dart';

class Candy extends StatefulWidget {
  Candy({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CandyState createState() => _CandyState();
}

class _CandyState extends State<Candy> {
  List<Dish> _dishes = List<Dish>();

  List<Dish> _cartList = List<Dish>();

  @override
  void initState() {
    super.initState();
    _populateDishes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Candy"),
        backgroundColor: Colors.red[200],
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8.0),
            child: GestureDetector(
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Icon(
                    Icons.shopping_cart,
                    size: 36.0,
                  ),
                  if (_cartList.length > 0)
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: CircleAvatar(
                        radius: 8.0,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        child: Text(
                          _cartList.length.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              onTap: () {
                if (_cartList.isNotEmpty)
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Cart(_cartList),
                    ),
                  );
              },
            ),
          )
        ],
      ),
      body: _buildGridView(),
    );
  }

  GridView _buildGridView() {
    return GridView.builder(
        padding: const EdgeInsets.all(5.0),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _dishes.length,
        itemBuilder: (context, index) {
          var item = _dishes[index];
          return Card(
              elevation: 4.0,
              child: Stack(
                fit: StackFit.loose,
                alignment: Alignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        item.name,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subhead,
                      ),
                    Container(
                    width: 100,
                    height: 100,
                    child: item.image,
                    ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      right: 8.0,
                      bottom: 8.0,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        child: (!_cartList.contains(item))
                            ? Icon(
                                Icons.add_circle,
                                color: Colors.green,
                              )
                            : Icon(
                                Icons.remove_circle,
                                color: Colors.red,
                              ),
                        onTap: () {
                          setState(() {
                            if (!_cartList.contains(item))
                              _cartList.add(item);
                            else
                              _cartList.remove(item);
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ));
        });
  }

  void _populateDishes() {
    var list = <Dish>[
      Dish(
        name: 'Apple Kiwi Candy',
        image: Image.asset('assets/images/1.jpg',
        fit: BoxFit.cover,),
        color: Colors.amber,
      ),
      Dish(
        name: 'Blueberry Candy',
        image: Image.asset('assets/images/2.jpg',
        fit: BoxFit.cover,),
        color: Colors.deepOrange,
      ),
      Dish(
        name: 'Candy Cane',
        image: Image.asset('assets/images/3.jpg',
        fit: BoxFit.cover,),
        color: Colors.brown,
      ),
      Dish(
        name: 'Candy Fruit',
        image: Image.asset('assets/images/4.jpg',
        fit: BoxFit.cover,),
        color: Colors.green,
      ),
      Dish(
        name: 'Lemon Sherbet',
        image: Image.asset('assets/images/5.jpg',
        fit: BoxFit.cover,),
        color: Colors.purple,
      ),
      Dish(
        name: 'Lolipop',
        image: Image.asset('assets/images/6.jpg',
        fit: BoxFit.cover,),
        color: Colors.blueGrey,
      ),
    ];

    setState(() {
      _dishes = list;
    });
  }
}