import 'package:flutter/material.dart';
// import 'package:flutter_dico/expandedflexible.dart';
import 'package:flutter_dico/second_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'navigation',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: NavigationPageBody(),
    );
  }
}

class NavigationPageBody extends StatelessWidget {
  const NavigationPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('first screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage('hallo gaes');
              }));
            },
            child: Text('second page')),
      ),
    );
  }
}
