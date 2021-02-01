import 'package:flutter/material.dart';
import './NavWidgets/AppDrawer.dart';
import './NavWidgets/BottomNav.dart';
import './Cards/Cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal[900],
            title: Center(
              child: Text('Agri-Input Master Maintenance'),
            ),
          ),
          body: AppBody(),
          drawer: AppDrawer(),
          bottomNavigationBar: BottomNav(),
        ),
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: Container(
              child: Cards(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Undo Batch',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      // To do
                    },
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Assign Suppliers',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      // To do
                    },
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Generate PO',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      // To do
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Divider(
              color: Colors.white,
              height: 2.5,
            ),
          )
        ],
      ),
    );
  }
}
