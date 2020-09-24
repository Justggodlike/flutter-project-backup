import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondaryButtonWidget extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final String text;
  final String iconPath;

  final Function onPressedFunction;

  const SecondaryButtonWidget({
    Key key,
    this.buttonColor,
    this.textColor,
    this.text,
    this.onPressedFunction,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          OutlineButton(
            color: Colors.white,
            splashColor: buttonColor,
            borderSide: BorderSide(
              color: Color(0xFFFF6969).withOpacity(0.5),
              width: 3.0,
            ),
            highlightedBorderColor: Colors.grey.withOpacity(0.1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Color(0xFFFF6969).withOpacity(0.8),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 15,
                  width: 15,
                  child: SvgPicture.asset(
                    iconPath,
                    color: Color(0xFFFF6969).withOpacity(0.8),
                  ),
                )
              ],
            ),
            onPressed: onPressedFunction,
          ),
        ],
      ),
    );
  }
}
