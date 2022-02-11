import 'package:flutter/material.dart';
import 'package:testapp1/regis.dart';
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
            "Register",
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
              ),
              Image.asset(
                "assets/images/profile.jpg",
                height: 200,
              ),
              Container(
                padding: const EdgeInsets.all(8),
              ),
              Register(const Icon(Icons.person), "Username"),
              Container(
                padding: const EdgeInsets.all(2.8),
              ),
              Register(const Icon(Icons.email_rounded), "Email Address"),
              Container(
                padding: const EdgeInsets.all(2.8),
              ),
              Pass(const Icon(Icons.lock), "Password"),
              Container(
                padding: const EdgeInsets.all(2.8),
              ),
              Pass(const Icon(Icons.lock), "Confirm Password"),
              Container(
                padding: const EdgeInsets.all(2.8),
              ),
              Register(
                  const Icon(Icons.phone_android_outlined), "Phone Number"),
              Container(
                padding: const EdgeInsets.all(2.8),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text('Register'),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(300, 45)),
                      overlayColor:
                          MaterialStateProperty.all(Colors.pink.shade200),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 16),
                      ))),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Already have an Account?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  )),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 16, color: Colors.pinkAccent),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ));
  }
}
