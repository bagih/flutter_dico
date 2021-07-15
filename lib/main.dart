import 'package:flutter/material.dart';
// import 'package:flutter_dico/expandedflexible.dart';
// import 'package:flutter_dico/navigation.dart';
import 'package:flutter_dico/responsive_page.dart';
// import 'package:flutter_dico/codelab1.dart';
// import 'package:flutter_dico/listview_page.dart';
// import 'package:flutter_dico/image.dart';
// import 'package:flutter_dico/input_widget.dart';
// import 'package:flutter_dico/button.dart';
// import 'package:flutter_dico/codelab1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      title: "Dico Train",
      home: ResponsivePage(),
    );
  }
}

// var nullPressed = () {};

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.teal),
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("di chrome"),
//             actions: [
//               IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.alarm,
//                     color: Colors.white,
//                   )),
//               IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.search,
//                     color: Colors.white,
//                   ))
//             ],
//             leading: IconButton(
//               onPressed: () {},
//               icon: Icon(
//                 Icons.menu,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: () {},
//             child: Icon(
//               Icons.remove,
//             ),
//           ),
//           body: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _ContainerBody(),
//               _paddingBody(20),
//               _rowBody(),
//             ],
//           )),
//     );
//   }
// }

// class _ContainerBody extends StatelessWidget {
//   const _ContainerBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(
//         "isi container",
//         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//       ),
//       width: 200,
//       height: 200,
//       padding: EdgeInsets.all(50),
//       margin: EdgeInsets.only(top: 10),
//       decoration: BoxDecoration(
//           color: Colors.orange,
//           // shape: BoxShape.circle,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.redAccent,
//               offset: Offset(10, -6),
//               blurRadius: 10,
//             ),
//             BoxShadow(
//               color: Colors.green,
//               offset: Offset(5, -3),
//               blurRadius: 10,
//             )
//           ],
//           border: Border.all(color: Colors.blueGrey, width: 2),
//           borderRadius: BorderRadius.all(Radius.circular(10))),
//     );
//   }
// }

// Widget _paddingBody(double padding) {
//   return Padding(
//     padding: EdgeInsets.all(padding),
//     child: Text("ini dari padding"),
//   );
// }

// Widget _rowBody() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       IconButton(
//           onPressed: nullPressed, icon: Icon(Icons.thumb_up_alt_rounded)),
//       IconButton(
//           onPressed: nullPressed, icon: Icon(Icons.thumb_down_alt_rounded)),
//       IconButton(onPressed: nullPressed, icon: Icon(Icons.share_rounded)),
//     ],
//   );
// }
