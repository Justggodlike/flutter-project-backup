import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseTextFiled extends StatefulWidget {
  final bool obscureText;
  final TextEditingController controller;
  final Function(String) onChanged;
  final Function(String) onSaved;
  final Function(String) onFieldSubmitted;
  final VoidCallback onTap;
  final String errorText;
  //final String label;
  final String hint;

  const BaseTextFiled({
    Key key,
    this.obscureText = false,
    this.controller,
    this.onChanged,
    this.onSaved,
    this.onFieldSubmitted,
    this.onTap,
    this.errorText,
    this.hint,
  }) : super(key: key);

  @override
  _BaseTextFiledState createState() => _BaseTextFiledState();
}

class _BaseTextFiledState extends State<BaseTextFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        onChanged: widget.onChanged,
        onSaved: widget.onSaved,
        onFieldSubmitted: widget.onFieldSubmitted,
        onTap: widget.onTap,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          fillColor: Color.fromARGB(255, 235, 240, 245),
          filled: true,
          hintText: widget.hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 235, 243, 245),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: Colors.lightBlue,
            ),
          ),
        ),
      ),
    );
  }
}
