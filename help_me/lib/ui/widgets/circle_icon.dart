import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/ui/decorations/index.dart';

class CircleIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.0,
      width: 18.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SvgPicture.asset(
          Assets.arrowRight,
          fit: BoxFit.scaleDown,
          color: Colors.black38,
        ),
      ),
    );
  }
}
