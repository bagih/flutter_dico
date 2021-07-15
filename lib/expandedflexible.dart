import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          _expandedWidget(Colors.red, 1),
          _expandedWidget(Colors.orange, 2),
          _expandedWidget(Colors.green, 3),
          _expandedWidget(Colors.blueGrey, 4),
          _expandedWidget(Colors.yellowAccent, 5),
          _expandedWidget(Colors.teal, 6)
        ],
      )),
    );
  }
}

// expanded Widget without flex
// Widget _expandedWidget(Color color) {
//   return Expanded(
//       child: Container(
//     decoration: BoxDecoration(color: color, boxShadow: [
//       BoxShadow(
//           color: Colors.black,
//           offset: Offset(2, 0),
//           blurRadius: 2,
//           spreadRadius: 1)
//     ]),
//   ));
// }

// expanded widget with flex
Widget _expandedWidget(Color color, int flex) {
  return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(color: color, boxShadow: [
          BoxShadow(
              color: Colors.black,
              offset: Offset(2, 0),
              blurRadius: 2,
              spreadRadius: 1)
        ]),
      ));
}

// flexible widget
// not takes all screen space, different from expanded widget
Widget _flexibleWidget() {
  return Flexible(
      child: Container(
    decoration: BoxDecoration(
      color: Colors.blueAccent,
      border: Border.all(color: Colors.white),
    ),
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        'Flexible',
        style: TextStyle(color: Colors.blue, fontSize: 24),
      ),
    ),
  ));
}
