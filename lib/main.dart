import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:helloworld_flutter/view/i18n/dy_localization.dart';
import 'package:helloworld_flutter/view/state/dy_state_management_demo.dart';
import './view/homepage_listview.dart';
import './view/drawer_demo.dart';
import './view/bottom_navitaionbar_demo.dart';
import './view/dy_basic_demo.dart';
import './view/dy_layout_demo.dart';
import './view/dy_view_demo.dart';
import './view/dy_sliver_demo.dart';
// import './view/dy_navigator_demo.dart' as DYNavitator;
import './view/dy_navigator_demo.dart';
import './view/dy_form_demo.dart';
import './view/dy_materal_components.dart';
import './view/dy_popup_menu.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('zh', 'CN'),
      // localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales){
      //   return Locale('en', 'US');
      // },

      localizationsDelegates: [
        DYLocalizationsConfigDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('zh', 'CN'),
      ],

      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.4),
        splashColor: Colors.white70,
        accentColor: Colors.blue,
      ),


      debugShowCheckedModeBanner: false,
      // home: Home(),
      // home: DYFormDemo(),
      // home: DYNavitatorDemo(),
      initialRoute: '/dcm',
      routes: {
        '/' : (context) => Home(),
        // '/about': (context) => DYPage(title: 'About'),
        // '/form': (context) => DYFormDemo(),
        '/dcm': (context) => DYMateralComponents(),
        // '/pop': (context) => DYMateralPopupMenuDemo(),
        '/state-management': (context) => DYStateManagementDemo(),
      },

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
              onPressed: () => debugPrint('right bar clicked'),
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
            DYViewDemo(),
            DYBasicDemo(),
            DYLayoutDemo(),
          ],
        ),
        drawer: HomepageDrawer(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
