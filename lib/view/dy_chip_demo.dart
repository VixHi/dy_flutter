import 'package:flutter/material.dart';

class DYChipDemo extends StatefulWidget {
  @override
  _DYChipDemoState createState() => _DYChipDemoState();
}

class _DYChipDemoState extends State<DYChipDemo> {
  List<String> chips = ['苹果', '香蕉', '柠檬', '百香果', '榴莲'];
  String selectChip = 'noting';
  List<String> filterChips = [];
  String choiceChip = '苹果';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              //  mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              runSpacing: 0,
              children: [
                Chip(
                  label: Text('label'),
                ),
                Chip(
                  label: Text('我们一起'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('vix'),
                ),
                Chip(
                  label: Text('开学了'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('label'),
                  //  avatar: Text(
                  //    'dy' ,
                  //    style: TextStyle(backgroundColor: Colors.grey)
                  //   ),
                  avatar: CircleAvatar(
                    child: Text('dy'),
                  ),
                ),
                Chip(
                  label: Text("城市"),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.red,
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 10,
              indent: 30,
            ),
            Wrap(
              spacing: 10,
              children: chips.map((String item) {
                return Chip(
                  label: Text(item),
                  onDeleted: () {
                    setState(() {
                      chips.remove(item);
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              color: Colors.grey,
              height: 10,
              indent: 30,
            ),
            Text('chip select is : $selectChip'),
            Wrap(
              spacing: 10,
              children: chips.map((String item) {
                return ActionChip(
                  label: Text(item),
                  onPressed: () {
                    setState(() {
                      selectChip = item;
                    });
                  },
                  // onDeleted: () {
                  //   setState(() {
                  //     chips.remove(item);
                  //   });
                  // },
                );
              }).toList(),
            ),
            Divider(
              color: Colors.grey,
              height: 10,
              indent: 30,
            ),
            Text('chip select is : ${filterChips.toString()}'),
            Wrap(
              spacing: 10,
              children: chips.map((String item) {
                return FilterChip(
                  label: Text(item),
                  selected: filterChips.contains(item),
                  onSelected: (isSelect) {
                    setState(() {
                      if (filterChips.contains(item)) {
                        filterChips.remove(item);
                      } else {
                        filterChips.add(item);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              color: Colors.grey,
              height: 10,
              indent: 30,
            ),
            Text('chip select is : $choiceChip'),
            Wrap(
              spacing: 10,
              children: chips.map((String item) {
                return ChoiceChip(
                  selectedColor: Colors.red,
                  label: Text(item),
                  selected: choiceChip == item,
                  onSelected: (isSelect) {
                    setState(() {
                      choiceChip = item;
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            chips = ['苹果', '香蕉', '柠檬', '百香果', '榴莲'];
            filterChips = [];
            choiceChip = '苹果';
          });
        },
      ),
    );
  }
}
