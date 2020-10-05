import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthTextFiled extends StatelessWidget {
  final TextEditingController textController;
  final String labelText;
  final String assetIconPath;
  final TextInputType keyboardType;
  final bool obscureText;
  final Function(String) validator;

  AuthTextFiled({
    this.textController,
    this.labelText = '',
    this.assetIconPath = '',
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: textController,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.headline5.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
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
