import 'package:flutter/material.dart';
import 'package:testapp1/MoneyBox.dart';
import 'dart:ui';

void main() {
  var app = runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomeApp(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Test Container",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                height: 120,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: InputDecoratorExample(),
              ),
              MoneyBox("ยอดคงเหลือ", 30000, 120, Colors.purple.shade200),
              MoneyBox("รายรับ", 10000, 100, Colors.yellow.shade200),
              MoneyBox("รายจ่าย", 8000, 100, Colors.green.shade200),
              Container(
                child: TextButton(
                  child: Text(
                    "button",
                    style: TextStyle(fontSize: 22),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ));
  }
}

class InputDecoratorExample extends StatelessWidget {
  const InputDecoratorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: 'Account Name',
        labelStyle:
            MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
          final Color color = states.contains(MaterialState.error)
              ? Theme.of(context).errorColor
              : Colors.orange;
          return TextStyle(color: color, letterSpacing: 1.3);
        }),
      ),
      validator: (String? value) {
        if (value == null || value == '') {
          return 'Enter name';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.always,
    );
  }
}
