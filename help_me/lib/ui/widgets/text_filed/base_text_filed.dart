import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseTextFiled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelStyle: Theme.of(context).textTheme.headline5.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        fillColor: Colors.transparent,
        filled: true,
      ),
    );
  }
}
