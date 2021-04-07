import 'package:flutter/material.dart';
import 'package:helloworld_flutter/view/dy_alert_dialog_demo.dart';
import 'package:helloworld_flutter/view/dy_bottom_sheet_demo.dart';
import 'package:helloworld_flutter/view/dy_expansion_panel_demo.dart';
import 'package:helloworld_flutter/view/dy_simple_dialog_demo.dart';
import 'package:helloworld_flutter/view/dy_snackBar_demo.dart';
import '../view/dy_popup_menu.dart';
import '../view/dy_form_demo.dart';
import '../view/dy_checkbox_demo.dart';
import '../view/dy_redio_demo.dart';
import '../view/dy_switch_demo.dart';
import '../view/dy_slider_demo.dart';
import '../view/dy_datetime_demo.dart';
import '../view/dy_simple_dialog_demo.dart';
import '../view/dy_bottom_sheet_demo.dart';

class DYMateralComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MateralComponent'),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          DYListItem(title: 'ExpansionPanelDemo', page: DYExpansionPanelDemo()),
          DYListItem(title: 'SnackBar', page: DYSnackBarDemo()),
          DYListItem(title: 'BottomSheet', page: DYBottomSheetDemo()),
          DYListItem(title: 'AlertDialog', page: DYAlertDialogDemo()),
          DYListItem(title: 'SimpleDialog', page: DYSimpleDialogDemo()),
          DYListItem(title: 'Time', page: DYDateTimeDemo()),
          DYListItem(title: 'Slider', page: DYSliderDemo()),
          DYListItem(title: 'Switch', page: DYSwitchDemo()),
          DYListItem(title: 'Radio', page: DYRedioDemo()),
          DYListItem(title: 'Checkbox', page: DYCheckboxDemo()),
          DYListItem(title: 'FormDemo', page: DYFormDemo()),
          DYListItem(title: 'ButtonDemo', page: DYButtonDemo()),
          DYListItem(title: 'DYListDemo', page: DYFloatingActionButtonDemo()),
          DYListItem(title: 'DYPopupmenuDemo',page: DYMateralPopupMenuDemo()),
        ],
      ),
    );
  }
}

class DYButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text('button'),
          style: ButtonStyle(),
        ),
        TextButton.icon(
          onPressed: () {},
          label: Text('button'),
          icon: Icon(Icons.add),
          style: ButtonStyle(),
        ),
      ],
    );
    final Widget ElevatedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Theme(
          // data:ThemeData(
          //   buttonColor: Colors.black,
          //   backgroundColor: Colors.black
          // ),
          data: Theme.of(context).copyWith(
              // buttonColor: Colors.black,
              buttonTheme: ButtonThemeData(
            // shape: BeveledRectangleBorder(
            //   borderRadius: BorderRadius.circular(25.0),
            // ),
            shape: StadiumBorder(),
          )),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('button1'),
          ),
        ),
        SizedBox(width: 10),
        ElevatedButton.icon(
          onPressed: () {},
          label: Text('button2'),
          icon: Icon(Icons.add),
          style: ButtonStyle(
              // foregroundColor: MaterialStateProperty.all(Colors.black),
              // overlayColor: MaterialStateProperty.all(Colors.black),
              // elevation: MaterialStateProperty.all(12.0),
              // side: MaterialStateProperty.all(BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid))
              ),
        ),
      ],
    );

    final Widget ExpandedButtonDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Expanded 
                Expanded(
                  // width: 100,
                  child: OutlinedButton(
                    child: Text('Button'),
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(Colors.red),
                      // shape: MaterialStateProperty.all(Border)
                    ),
                  ),
                ),
                SizedBox(width:10),
                Expanded(
                  // width: 100,
                  flex: 2,
                  child: OutlinedButton(
                    child: Text('Button'),
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(Colors.red),
                      // shape: MaterialStateProperty.all(Border)
                    ),
                  ),
                )
              ],
            );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FlatButtonDemo
            // ElevatedButtonDemo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    textButtonTheme: TextButtonThemeData(
                      style:ButtonStyle(
                        // backgroundColor: MaterialStateProperty.all(Colors.red),
                        overlayColor: MaterialStateProperty.all(Colors.black)
                        // shape: MaterialStateProperty.all()
                      )
                    ),
                    buttonTheme: ButtonThemeData(
                      padding: EdgeInsets.symmetric(horizontal: 36),
                    ),
                    splashColor: Colors.black,
                    backgroundColor: Colors.red,
                  ),

                  child: TextButton(
                    onPressed: () {},
                    child: Text('Button1'),
                  ),
                  /*
                  child: ButtonBar(
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Button1'),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Button2'),
                      ),
                    ],
                  ),*/
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _wedgitDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            )
          ],
        ),
      ),
    );
  }
}

class DYFloatingActionButtonDemo extends StatelessWidget {
  final Widget _dyFloatingActionButton = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.black87,
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(30),
    // ),
  );

  final Widget _dyFloatingActionButtonExtend = FloatingActionButton.extended(
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text('Add'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DYFloatingActionButtonDemo'), elevation: 0.0),
      floatingActionButton: _dyFloatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class DYListItem extends StatelessWidget {
  final String title;
  final Widget page;

  DYListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
