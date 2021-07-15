import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      title: "nyoba button",
      home: ButtonPageBody(),
    );
  }
}

class ButtonPageBody extends StatefulWidget {
  const ButtonPageBody({Key? key}) : super(key: key);

  @override
  _ButtonPageBodyState createState() => _ButtonPageBodyState();
}

class _ButtonPageBodyState extends State<ButtonPageBody> {
  String buah = "nanas";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("nyoba button"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 10,
          ),
          _elevatedButton(),
          SizedBox(
            height: 10,
          ),
          _textButton(),
          SizedBox(
            height: 10,
          ),
          _outlinedButton(),
          SizedBox(
            height: 10,
          ),
          _iconButton(),
          SizedBox(
            height: 10,
          ),
          DropdownButton(
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem(
                  value: "nanas",
                  child: Text("Nanas"),
                ),
                DropdownMenuItem(
                  child: Text("semangka"),
                  value: "semangka",
                ),
                DropdownMenuItem(
                  child: Text("melon"),
                  value: "melon",
                ),
              ],
              value: buah,
              hint: Text("pilih buah"),
              onChanged: (String? value) {
                setState(() {
                  buah = value!;
                  print(value);
                });
              }),
        ]),
      ),
    );
  }
}

Widget _elevatedButton() {
  return ElevatedButton(onPressed: () {}, child: Text("elevated Button"));
}

Widget _textButton() {
  return TextButton(onPressed: () {}, child: Text("text button"));
}

Widget _outlinedButton() {
  return OutlinedButton(onPressed: () {}, child: Text("outlined button"));
}

Widget _iconButton() {
  return IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.calendar_today,
    ),
    tooltip: "ini icon button",
    hoverColor: Colors.red,
  );
}

// Widget _dropdownButton() {
//   String buah = "buah";
//   return 
// }
