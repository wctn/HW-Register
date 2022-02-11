import 'dart:ui';

import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  String title;
  Icon icon;

  Register(
    this.icon,
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 20, left: 20),
        child: new TextFormField(
          decoration: InputDecoration(
            prefixIcon: icon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            labelText: title,
            labelStyle:
                MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
              final Color color = states.contains(MaterialState.error)
                  ? Theme.of(context).errorColor
                  : Colors.blueGrey[200]!;

              return TextStyle(color: color, letterSpacing: 1.3, fontSize: 15);
            }),
          ),
          validator: (String? value) {
            if (value == null || value == '') {}
            return null;
          },
          autovalidateMode: AutovalidateMode.always,
        ));
  }
}

class Pass extends StatelessWidget {
  String pass;
  Icon icon;

  Pass(
    this.icon,
    this.pass,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 20, left: 20),
        child: new TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: icon,
            focusColor: Colors.black,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            labelText: pass,
            labelStyle:
                MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
              final Color color = states.contains(MaterialState.error)
                  ? Theme.of(context).errorColor
                  : Colors.blueGrey[200]!;

              return TextStyle(color: color, letterSpacing: 1.3, fontSize: 15);
            }),
          ),
          validator: (String? value) {
            if (value == null || value == '') {}
            return null;
          },
          autovalidateMode: AutovalidateMode.always,
        ));
  }
}
