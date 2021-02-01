import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key key}) : super(key: key);
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOption = [
    Text('Pending'),
    Text('Executing'),
    Text('Executed'),
    Text('Completed')
  ];

  getBody(int item) {
    return _widgetOption.elementAt(item);
  }

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _navItem(Icon icon, Text text) {
    return BottomNavigationBarItem(icon: icon, title: text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        fixedColor: Colors.cyan[500],
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          _navItem(Icon(Icons.timer), Text('Pending ')),
          _navItem(Icon(Icons.directions_run), Text('Executing ')),
          _navItem(Icon(Icons.cloud_done), Text('Executed ')),
          _navItem(Icon(Icons.check), Text('Completed ')),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTapItem,
      ),
    );
  }
}
