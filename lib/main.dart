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
      debugShowCheckedModeBanner: false,
      title: "FITM",
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
  TextEditingController _username = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _education = TextEditingController();
  TextEditingController _gpa = TextEditingController();
  TextEditingController _pro = TextEditingController();
  TextEditingController _first = TextEditingController();
  String dropdownValue = 'โครงการรับตรงสอบข้อเขียน';
  String dropdownValue1 = '[4 ปี] สาขาวิชาเทคโนโลยีสารสนเทศ (IT)';
  String dropdownValue2 = '[4 ปี] สาขาวิชาเทคโนโลยีสารสนเทศ (IT)';
  String dropdownValue3 = '[4 ปี] สาขาวิชาเทคโนโลยีสารสนเทศ (IT)';
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "สมัครเรียน FITM",
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  controller: _username,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Username'),
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
                  obscureText: _isObscure,
                  controller: _password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'รหัสผ่าน',
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          })),
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
              Container(
                padding: const EdgeInsets.all(16.0),
              ),
              Container(
                child: Text(
                  'โครงการรับสมัคร',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style:
                    const TextStyle(color: Color.fromARGB(255, 109, 109, 109)),
                underline: Container(
                  height: 1,
                  color: Color.fromARGB(255, 196, 196, 196),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'โครงการรับตรงสอบข้อเขียน',
                  'โครงการโควตาพื้นที่',
                  'โครงการ portfolio',
                  'โครงการเรียนดี',
                  'โครงการรับตรงใช้คะแนน GAT/PAT',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'อันดับที่ 1',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              DropdownButton<String>(
                value: dropdownValue1,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style:
                    const TextStyle(color: Color.fromARGB(255, 109, 109, 109)),
                underline: Container(
                  height: 1,
                  color: Color.fromARGB(255, 196, 196, 196),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue1 = newValue!;
                  });
                },
                items: <String>[
                  '[4 ปี] สาขาวิชาเทคโนโลยีสารสนเทศ (IT)',
                  '[4 ปี] สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)',
                  '[4 ปี] สาขาวิชาวิศวกรรมอุตสาหกรรม (IEM)',
                  '[4 ปี] สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MM)',
                  '[4 ปี] สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFE)',
                  '[4 ปี]สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CA)',
                  '[2 ปี] สาขาวิชาเทคโนโลยีสารสนเทศ (ITI)',
                  '[2 ปี] สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET)',
                  '[2 ปี] สาขาวิชาการจัดการอุตสาหกรรม (IMT)',
                  '[2 ปี] สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MMT)',
                  '[2 ปี] สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFET)',
                  '[2 ปี] สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CDM)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'อันดับที่ 2',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              DropdownButton<String>(
                value: dropdownValue2,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style:
                    const TextStyle(color: Color.fromARGB(255, 109, 109, 109)),
                underline: Container(
                  height: 1,
                  color: Color.fromARGB(255, 196, 196, 196),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue2 = newValue!;
                  });
                },
                items: <String>[
                  '[4 ปี] สาขาวิชาเทคโนโลยีสารสนเทศ (IT)',
                  '[4 ปี] สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)',
                  '[4 ปี] สาขาวิชาวิศวกรรมอุตสาหกรรม (IEM)',
                  '[4 ปี] สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MM)',
                  '[4 ปี] สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFE)',
                  '[4 ปี]สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CA)',
                  '[2 ปี] สาขาวิชาเทคโนโลยีสารสนเทศ (ITI)',
                  '[2 ปี] สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET)',
                  '[2 ปี] สาขาวิชาการจัดการอุตสาหกรรม (IMT)',
                  '[2 ปี] สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MMT)',
                  '[2 ปี] สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFET)',
                  '[2 ปี] สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CDM)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'อันดับที่ 3',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              DropdownButton<String>(
                value: dropdownValue3,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style:
                    const TextStyle(color: Color.fromARGB(255, 109, 109, 109)),
                underline: Container(
                  height: 1,
                  color: Color.fromARGB(255, 196, 196, 196),
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue3 = newValue!;
                  });
                },
                items: <String>[
                  '[4 ปี] สาขาวิชาเทคโนโลยีสารสนเทศ (IT)',
                  '[4 ปี] สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)',
                  '[4 ปี] สาขาวิชาวิศวกรรมอุตสาหกรรม (IEM)',
                  '[4 ปี] สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MM)',
                  '[4 ปี] สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFE)',
                  '[4 ปี]สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CA)',
                  '[2 ปี] สาขาวิชาเทคโนโลยีสารสนเทศ (ITI)',
                  '[2 ปี] สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET)',
                  '[2 ปี] สาขาวิชาการจัดการอุตสาหกรรม (IMT)',
                  '[2 ปี] สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MMT)',
                  '[2 ปี] สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFET)',
                  '[2 ปี] สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CDM)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WelcomePage(
                          name: _name.text,
                          username: _username.text,
                          email: _email.text,
                          password: _password.text,
                          education: _education.text,
                          gpa: _gpa.text,
                          pro: _pro.text,
                          dropdownValue: dropdownValue,
                          dropdownValue1: dropdownValue1,
                          dropdownValue2: dropdownValue2,
                          dropdownValue3: dropdownValue3,
                        ),
                      ),
                    );
                  },
                  child: Text('สมัคร'))
            ],
          ),
        ));
  }
}
