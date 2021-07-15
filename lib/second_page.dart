import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // const SecondPage({ Key? key }) : super(key: key);
  final String message;
  SecondPage(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(message),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('go back')),
          ],
        ),
      ),
    );
  }
}
