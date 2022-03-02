import 'package:flutter/material.dart';
import 'dart:ui';
import 'welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({
    Key? key,
  }) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _gpa = TextEditingController();
  TextEditingController _education = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Register",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'ชื่อ-นามสกุล'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'E-mail'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _education,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'วุฒิการศึกษา'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _gpa,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'GPA'),
                  keyboardType: TextInputType.number,
                ),
              ),
              DropdownButton<String>(
                hint: Text('โครงการรับสมัคร'),
                items: <String>[
                  'โครงการรับตรงสอบข้อเขียน',
                  'โครงการโควตาพื้นที่',
                  'โครงการ portfolio',
                  'โครงการเรียนดี',
                  'โครงการรับตรงใช้คะแนน GAT/PAT'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'ภาควิชาและสาขาวิชาที่ต้องการสมัครเรียน',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'ภาควิชาเทคโนโลยีสารสนเทศ',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              DropdownButton<String>(
                hint: Text('หลักสูตร 4 ปีรับ ม.6 ปวช.'),
                items: <String>[
                  'สาขาวิชาเทคโนโลยีสารสนเทศ (IT) ',
                  'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              DropdownButton<String>(
                hint: Text('หลักสูตร ต่อเนื่อง รับ ปวส.'),
                items: <String>[
                  'สาขาวิชาเทคโนโลยีสารสนเทศ (ITI)',
                  'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET)'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              Container(
                padding: const EdgeInsets.all(.0),
                child: Text(
                  'ภาควิชาการจัดการอุตสาหกรรม',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              DropdownButton<String>(
                hint: Text('หลักสูตร 4 ปีรับ ม.6 ปวช.'),
                items: <String>[
                  'สาขาวิชาวิสวกรรมอุตสาหกรรมและการจัดการ (IEM)',
                  'สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต (MM)'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              DropdownButton<String>(
                hint: Text('หลักสูตร ต่อเนื่อง รับ ปวส.'),
                items: <String>[
                  'สาขาวิชาเทคโนโลยีสารสนเทศ (ITI)',
                  'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET)'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'ภาควิชาวิศวกรรมเกษตรเพื่ออุตสาหกรรม',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              DropdownButton<String>(
                hint: Text('หลักสูตร 4 ปีรับ ม.6 ปวช.'),
                items: <String>[
                  'สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFE) ',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              DropdownButton<String>(
                hint: Text('หลักสูตร ต่อเนื่อง รับ ปวส.'),
                items: <String>[
                  'สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFET)',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'ภาควิชาการออกแบบและบริหารงานก่อสร้าง',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              DropdownButton<String>(
                hint: Text('หลักสูตร 4 ปีรับ ม.6 ปวช.'),
                items: <String>[
                  'สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CA) ',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              DropdownButton<String>(
                hint: Text('หลักสูตร ต่อเนื่อง รับ ปวส.'),
                items: <String>[
                  'สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CDM)',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WelcomePage(
                          name: _name.text,
                          email: _email.text,
                          education: _education.text,
                          gpa: _gpa.text,
                        ),
                      ),
                    );
                  },
                  child: Text('Register'))
            ],
          ),
        ));
  }
}
