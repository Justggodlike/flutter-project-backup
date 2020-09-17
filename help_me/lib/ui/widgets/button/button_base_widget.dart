import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonBaseWidget extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final String text;
  final String assetsIcon;
  final bool isDisabled;
  final Function onPressed;

  const ButtonBaseWidget({
    @required this.buttonColor,
    @required this.textColor,
    @required this.text,
    @required this.onPressed,
    @required this.assetsIcon,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoButton(
        padding: EdgeInsets.all(8.0),
        borderRadius: BorderRadius.circular(8.0),
        color: buttonColor,
        onPressed: isDisabled ? null : onPressed,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text.toUpperCase(), //TODO:add text color
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: textColor,
              ),
              child: SvgPicture.asset(
                assetsIcon,
                color: buttonColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
