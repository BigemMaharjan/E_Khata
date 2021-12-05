// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class TextFormFields extends StatelessWidget {
  TextFormFields({
    Key? key,
    required this.controller,
    required this.data,
    required this.txtHint,
    required this.obsecure,
  }) : super(key: key);

  final TextEditingController controller;
  final IconData data;
  final String txtHint;
  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      child: TextFormField(
        controller: controller,
        obscureText: obsecure,
        decoration: InputDecoration(
            prefixIcon: Icon(
              data,
              color: Colors.grey,
            ),
            hintText: txtHint),
      ),
    );
  }
}
