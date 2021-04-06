import 'package:flutter/material.dart';

class DYMateralPopupMenuDemo extends StatefulWidget {
  @override
  _DYMateralPopupMenuDemoState createState() => _DYMateralPopupMenuDemoState();
}

class _DYMateralPopupMenuDemoState extends State<DYMateralPopupMenuDemo> {
  String _currentMenu = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_popupMenu'),
        elevation: 10,
      ),

      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_currentMenu),
                PopupMenuButton(
                  onSelected: (value) {
                    setState(() {
                      _currentMenu = value;
                    });
                    print(value);
                  },

                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem( 
                      value: 'Home',
                      child: Text('Home'),
                    ),
                    PopupMenuItem( 
                      value: 'News',
                      child: Text('News'),
                    ),
                    PopupMenuItem( 
                      value: 'User',
                      child: Text('User'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}