import 'package:flutter/material.dart';
import 'CardStruct.dart';

class Cards extends StatelessWidget {
  _getCard(
      name, category, fullItemName, description, imgUrl, quantity, context) {
    print("dasdasdasd asdklnas;dlmas;da s'd as'd asd");
    return CardStruct().createCard(
        name, category, fullItemName, description, imgUrl, quantity, context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _getCard('Sweet Corn', 'Seed', 'Hybrid Maize Sweet Corn',
              '100 seed per pack', 'assets/farmItems/1.jpg', '20', context),
          _getCard('Beetroot', 'Seed', 'Hybrid Beetroot', '58 seed per pack',
              'assets/farmItems/2.jpg', '25', context),
          _getCard('Flower', 'Seed', 'Godetia Mixed Seed', '68 seed per pack',
              'assets/farmItems/3.jpg', '30', context),
          _getCard('SunFlower', 'Seed', 'Sunflower tail Sungold',
              '70 seed per pack', 'assets/farmItems/4.jpg', '15', context),
          _getCard('Dahlia', 'Seed', 'Dahlia mixed seed', '40 seed per pack',
              'assets/farmItems/5.jpg', '33', context),
          _getCard('Beans', 'Seed', 'Hybrid long Beans', '80 seed per pack',
              'assets/farmItems/6.jpg', '45', context),
          _getCard('Safex', 'Fertilizer', 'Organic Fertilizer', '1 kg per pack',
              'assets/farmItems/7.jpg', '60', context),
          _getCard('raj Krishi', 'Fertilizer', 'Phosphate rich Manure',
              '1 kg per pack', 'assets/farmItems/8.jpg', '47', context),
        ],
      ),
    );
  }
}
