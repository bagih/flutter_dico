import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      title: "image page",
      home: ImagePageBody(),
    );
  }
}

class ImagePageBody extends StatefulWidget {
  const ImagePageBody({Key? key}) : super(key: key);

  @override
  _ImagePageBodyState createState() => _ImagePageBodyState();
}

class _ImagePageBodyState extends State<ImagePageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image page"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network("https://wallpapercave.com/wp/wp4685585.jpg")
          ],
        ),
      ),
    );
  }
}
