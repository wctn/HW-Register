import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  double heightBox;
  Color colorBox;
  String img;

  MoneyBox(
    this.img,
    this.heightBox,
    this.colorBox,
  );

  //const MoneyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.30),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
          color: colorBox, borderRadius: BorderRadius.circular(10)),
      height: heightBox,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            img,
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.only(),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          ),
        ],
      ),
    );
  }
}
