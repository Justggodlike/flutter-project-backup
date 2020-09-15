import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthTextFiled extends StatelessWidget {
  final TextEditingController textController;
  final String labelText;
  final String assetIconPath;
  final TextInputType keyboardType;
  final bool wrongText;

  AuthTextFiled({
    this.textController,
    this.labelText = '',
    this.assetIconPath = '',
    this.keyboardType = TextInputType.text,
    this.wrongText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      keyboardType: keyboardType,
      obscureText: wrongText,
      decoration: InputDecoration(
        labelText: labelText,
        //TODO add label style
        prefixIcon: SvgPicture.asset(
          assetIconPath,
          fit: BoxFit.scaleDown,
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
