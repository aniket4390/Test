import 'package:flutter/material.dart';

_cards(String text, context, pad) {
  return Container(
    padding: pad,
    child: Card(
      child: ListTile(
        tileColor: Colors.black,
        title: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ),
  );
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 0.1,
        ),
      ),
      child: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(top: 40.0, left: 40.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/backImg/back.jpg')),
                ),
                child: Text(
                  'Agri-Purchase Management',
                  style: TextStyle(fontSize: 35.0, color: Colors.white),
                ),
              ),
              _cards('Agri-Input Master Maintenance', context, null),
              _cards('Supplier Master Maintenance', context, null),
              _cards('Agri-Input Purchase Requests', context, null),
              _cards('Tax Master Maintenance', context,
                  EdgeInsets.only(top: 450.0))
            ],
          ),
        ),
      ),
    );
  }
}
