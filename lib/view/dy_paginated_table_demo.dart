import 'package:flutter/material.dart';
import '../model/post.dart';

class PostDataSource extends DataTableSource {
  final List<Post> _post = posts;
  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    final Post post = posts[index];
    return DataRow(
      cells: [
        DataCell(
          Text(post.title),
        ),
        DataCell(
          Text(post.author),
        ),
        DataCell(
          Image.network(post.imageUrl),
        ),
      ],
    );
  }

  @override
  int get rowCount => _post.length;

  @override
  int get selectedRowCount => _selectedCount;

  @override
  bool get isRowCountApproximate => false;

  void _sort(getFiled(post), bool ascending) {
    _post.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      final aValue = getFiled(a);
      final bValue = getFiled(b);
      return Comparable.compare(aValue, bValue);
    });
    notifyListeners();
  }
}

class DYPaginatedDemo extends StatefulWidget {
  @override
  _DYDPaginatedDemoState createState() => _DYDPaginatedDemoState();
}

class _DYDPaginatedDemoState extends State<DYPaginatedDemo> {
  int _sortColumnIndex = 1;
  bool _sortAscending = true;

  final PostDataSource _postDataSource = PostDataSource();

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
            PaginatedDataTable(
              source: _postDataSource,
              onSelectAll: (bool value) {},
              rowsPerPage: 5,
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              columns: [
                DataColumn(
                  label: Text('title'),
                ),
                DataColumn(
                    label: Text('Author'),
                    onSort: (int sortColumnIndex, bool sortAscending) {
                      // Post post = posts[sortColumnIndex];
                      _postDataSource._sort(
                          (post) => post.author.length, sortAscending);
                      setState(() {
                        _sortAscending = sortAscending;
                        _sortColumnIndex = sortColumnIndex;
                      });
                    }),
                DataColumn(label: Text('image')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
