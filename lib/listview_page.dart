import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  // const ListViewPage({Key? key}) : super(key: key);
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview page'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      // listview with dynamic value and map
      // body: ListView(
      //   children: numberList.map((number) {
      //     return Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black),
      //       ),
      //       child: Center(
      //         child: Text(
      //           '$number',
      //           style: TextStyle(fontSize: 50),
      //         ),
      //       ),
      //     );
      //   }).toList(),
      // ),
      body: _listViewSeparated(),
    );
  }
}

// listview builder
Widget _listViewBuilder() {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13];
  return ListView.builder(
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 250,
        decoration: BoxDecoration(
            color: Colors.grey, border: Border.all(color: Colors.black)),
        child: Center(
          child: Text(
            '${numberList[index]}',
            style: TextStyle(fontSize: 50),
          ),
        ),
      );
    },
    itemCount: numberList.length,
  );
}

// listview with separated
Widget _listViewSeparated() {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13];
  return ListView.separated(
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 250,
        decoration: BoxDecoration(
            color: Colors.grey, border: Border.all(color: Colors.black)),
        child: Center(
          child: Text(
            '${numberList[index]}',
            style: TextStyle(fontSize: 50),
          ),
        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) {
      return SizedBox(
        height: 5,
      );
    },
    itemCount: numberList.length,
  );
}
