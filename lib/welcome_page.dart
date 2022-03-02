import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String name,
      username,
      email,
      password,
      education,
      gpa,
      pro,
      dropdownValue,
      dropdownValue1,
      dropdownValue2,
      dropdownValue3;

  double wh = 0, total = 0;
  WelcomePage({
    Key? key,
    required this.name,
    required this.username,
    required this.email,
    required this.password,
    required this.education,
    required this.gpa,
    required this.pro,
    required this.dropdownValue,
    required this.dropdownValue1,
    required this.dropdownValue2,
    required this.dropdownValue3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สรุปข้อมูลการสมัครเรียน'),
      ),
      body: SingleChildScrollView(
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
                      subtitle: Text(
                        ' $name',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('Username : '),
                      subtitle: Text(
                        ' $username',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('E-mail : '),
                      subtitle: Text(
                        ' $email',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('Password : '),
                      subtitle: Text(
                        ' $password',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('วุฒิการศึกษา : '),
                      subtitle: Text(
                        ' $education',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('GPA : '),
                      subtitle: Text(
                        ' $gpa',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('โครงการรับสมัครที่เลือก : '),
                      subtitle: Text(
                        ' $dropdownValue',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('อันดับที่1 : '),
                      subtitle: Text(
                        ' $dropdownValue1',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('อันดับที่2 : '),
                      subtitle: Text(
                        ' $dropdownValue2',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('อันดับที่3 : '),
                      subtitle: Text(
                        ' $dropdownValue3',
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
