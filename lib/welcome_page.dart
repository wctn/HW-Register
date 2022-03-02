import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String name, email, education, gpa;

  double wh = 0, total = 0;
  WelcomePage({
    Key? key,
    required this.name,
    required this.email,
    required this.education,
    required this.gpa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Data Screen'),
      ),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('ชื่อ : '),
                      subtitle: Text(' $name'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('E-mail : '),
                      subtitle: Text(' $email'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('วุฒิการศึกษา : '),
                      subtitle: Text(' $education'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('GPA : '),
                      subtitle: Text(' $gpa'),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
