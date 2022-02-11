import 'package:flutter/material.dart';

class Pass extends StatelessWidget {
  String pass;
  Icon icon;

  Pass(
    this.icon,
    this.pass,
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: icon,
        focusColor: Colors.black,
        border: const OutlineInputBorder(),
        labelText: pass,
        labelStyle:
            MaterialStateTextStyle.resolveWith((Set<MaterialState> states) {
          final Color color = states.contains(MaterialState.error)
              ? Theme.of(context).errorColor
              : Colors.blueGrey[200]!;

          return TextStyle(color: color, letterSpacing: 1.3);
        }),
      ),
      validator: (String? value) {
        if (value == null || value == '') {}
        return null;
      },
      autovalidateMode: AutovalidateMode.always,
    );
  }
}
