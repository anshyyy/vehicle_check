import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  final String labelText;
  final String placeholder;

  const BuildTextField(
      {Key? key, required this.labelText, required this.placeholder})
      : super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
      ),
    );
  }
}
