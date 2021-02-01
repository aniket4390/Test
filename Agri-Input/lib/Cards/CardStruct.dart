import 'package:flutter/material.dart';

class CardStruct {
  createCard(
      name, category, fullItemName, description, imgUrl, quantity, context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(10),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(3.0),
              child: Image.asset(imgUrl),
            ),
          ),
          Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.only(left: 20.0),
                color: Colors.white,
                height: 150,
                width: 100,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text("Type :" + category),
                      //child : Text($asda , stly)
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text("Product :" + name),
                      //child : Text($asda , stly)
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text("Quantity :" + quantity),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 10.0),
                      child: FlatButton(
                        color: Colors.blue,
                        child: Text('more'),
                        onPressed: () {
                          showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(name),
                                  content: Container(
                                    height: 300.0,
                                    child: Column(
                                      children: [
                                        Text("product :" + fullItemName),
                                        Text("description :" + description),
                                        Container(
                                          padding: EdgeInsets.only(top: 10.0),
                                          child: Image.asset(
                                            imgUrl,
                                            fit: BoxFit.fill,
                                            height: 250.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    FlatButton(
                                      color: Colors.blue,
                                      child: Text('close'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
