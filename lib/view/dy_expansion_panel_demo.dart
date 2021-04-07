import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpand;

  ExpansionPanelItem({this.headerText, this.body, this.isExpand});
}

class DYExpansionPanelDemo extends StatefulWidget {
  @override
  _DYExpansionPanelDemoState createState() => _DYExpansionPanelDemoState();
}

class _DYExpansionPanelDemoState extends State<DYExpansionPanelDemo> {
  bool dyIsExPand = true;
  List<ExpansionPanelItem> expandPanelItems;

  @override
  void initState() {
    super.initState();
    expandPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'panel A',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text('Content for panel A.'),
        ),
        isExpand: true,
      ),
      ExpansionPanelItem(
        headerText: 'panel B',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text('Content for panel B.'),
        ),
        isExpand: false,
      ),
      ExpansionPanelItem(
        headerText: 'panel C',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text('Content for panel C.'),
        ),
        isExpand: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion panel'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpand) {
                setState(() {
                  expandPanelItems[panelIndex].isExpand = !isExpand;
                });
              },

              children: expandPanelItems.map(
                (ExpansionPanelItem item) {
                  return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpand){
                      return Container( 
                        padding: EdgeInsets.all(16),
                        child: Text(item.headerText),
                      );
                    }, 
                    body: item.body,
                    isExpanded: item.isExpand,
                  );
                }
              ).toList(),

              /*
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpand) {
                    return Container(
                      padding: EdgeInsets.all(16),
                      child: Text('Panel A'),
                    );
                  },
                  body: Container(
                    padding: EdgeInsets.all(16),
                    width: double.infinity,
                    child: Text('Content for panel A.'),
                  ),
                  isExpanded: dyIsExPand,
                )
              ],*/
            ),
          ],
        ),
      ),
    );
  }
}
