import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  // const ResponsivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive page'),
      ),
      backgroundColor: Colors.blueAccent.shade700,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Screen width: ${screenSize.width.toStringAsFixed(2)}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Screen orientation: $orientation',
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            )
          ]),
    );
  }
}

// sebenarnya ada LayoutBuilder tapi karena saya test device nya android dan agak susah
// terlihat perbedaannya maka saya tidak write codenya
