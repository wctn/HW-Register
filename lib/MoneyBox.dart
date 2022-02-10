import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  String titleBox;
  double amountMoney;
  double heightBox;
  Color colorBox;

  MoneyBox(this.titleBox, this.amountMoney, this.heightBox, this.colorBox);
  //const MoneyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
          color: colorBox, borderRadius: BorderRadius.circular(20)),
      height: heightBox,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            titleBox,
            style: TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: Text(
            '${NumberFormat("#,###.###").format(amountMoney)}',
            style: TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ))
        ],
      ),
    );
  }
}
