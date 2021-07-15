import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "input widget",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: InputPageBody(),
    );
  }
}

class InputPageBody extends StatefulWidget {
  const InputPageBody({Key? key}) : super(key: key);

  @override
  _InputPageBodyState createState() => _InputPageBodyState();
}

class _InputPageBodyState extends State<InputPageBody> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // String nama = '';
    bool isEated = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("input widget"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: TextField(
                // onChanged: (String value) {
                //   setState(() {
                //     nama = value;
                //     print(nama);
                //   });
                // },
                // onSubmitted: (String value) {
                //   setState(() {
                //     nama = value;
                //     print(nama);
                //   });
                // },
                controller: _textEditingController,
                decoration: InputDecoration(
                  hintText: "Masukkan nama anda",
                  labelText: "Nama",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(_textEditingController.text),
                      );
                    });
              },
              child: Text("Submit"),
            ),
            SizedBox(
              height: 20,
            ),
            Switch(
                value: isEated,
                onChanged: (bool value) {
                  setState(() {
                    isEated = value;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(isEated ? 'Sudah makan' : 'Belon makan'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }),
          ],
        ),
      ),
    );

    // @override
    // void dispose() {
    //   _textEditingController.dispose();
    //   super.dispose();
    // }
  }
}

// Widget _radioButton() {
//   return Column(
//     children: [
//       ListTile(
//         leading: Radio(value: value, groupValue: groupValue, onChanged: onChanged),
//       )
//     ],
//   )
// }
