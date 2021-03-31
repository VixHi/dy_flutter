import 'dart:ffi';
import 'package:flutter/material.dart';
import './view/homepage_listview.dart';
import './view/drawer_demo.dart';
import './view/bottom_navitaionbar_demo.dart';
import './view/dy_basic_demo.dart';


void main() {
  runApp(App());  
} 

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.4),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('homepage'),
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: ()=> debugPrint('lefe bar clicked'),
          // ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Navigation',
              onPressed: ()=> debugPrint('right bar clicked'),
            ),
          ],

          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2.0,
            tabs: [
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.local_activity)),
            ],
          ),
        
        ),
        body: TabBarView(
          children: <Widget>[
            
            HomeListView(),
            DYRichTextDemo(),
            DYBasicDemo(),
            Icon(Icons.local_activity, size: 200.0, color: Colors.black12),
          ],
        ),
        drawer: HomepageDrawer(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),

    );
  }
}


