import 'package:flutter/material.dart';
import '../model/post.dart';

class DYDataTableDemo extends StatefulWidget {
  @override
  _DYDataTableDemoState createState() => _DYDataTableDemoState();
}

class _DYDataTableDemoState extends State<DYDataTableDemo> {

  int _sortColumnIndex = 1;
  bool _sortAscending = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datatable'),
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          children: [
            DataTable(
              onSelectAll: (bool value){

              },
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              columns: [
                DataColumn(
                  label: Text('title'),
                  
                ),
                DataColumn(
                  label: Text('Author'),
                  onSort: (int sortColumnIndex, bool sortAscending) {
                    setState(() {
                      _sortAscending = sortAscending;
                      _sortColumnIndex = sortColumnIndex;
                      posts.sort((m, n){
                        if (!sortAscending) {
                          final c = m;
                          m = n;
                          n = c;
                        } 
                        return m.author.length.compareTo(n.author.length);
                      });
                    });
                  }
                ),
                DataColumn(label: Text('image')),
              ],
              rows: posts.map((post) {
                return DataRow(
                  selected: post.selected,
                  onSelectChanged: (value){
                    setState(() {
                      if (post.selected != value) {
                        post.selected = value;
                      }
                    });
                  },
                  cells: [
                    DataCell(
                      Text(post.title),
                    ),
                    DataCell(
                      Text(post.author),
                    ),
                    DataCell(
                      Image.network(post.imageUlr),
                    ),
                  ],
                );
              }).toList()),
          ],
        ),
      ),
    );
  }
}



