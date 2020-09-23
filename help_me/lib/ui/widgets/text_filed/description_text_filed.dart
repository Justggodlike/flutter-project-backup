import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionTextFiled extends StatelessWidget {
  final String hintText;

  const DescriptionTextFiled({
    Key key,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        maxLines: 16,
        maxLength: 512,
        maxLengthEnforced: true,
        decoration: InputDecoration(
          fillColor: Color.fromARGB(255, 235, 240, 245),
          filled: true,
          hintText: hintText,
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          labelStyle: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        validator: (value) =>
            value.isNotEmpty ? null : 'content can\'t be empty',
        style: TextStyle(
          fontSize: 18.0,
        ),
      ),
    );
  }
}
