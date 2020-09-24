import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:help_me/ui/widgets/index.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String svgIconPath;
  final Function() onTap;
  final double height;

  const MenuItem({
    this.title,
    this.onTap,
    this.height,
    this.svgIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (svgIconPath != null)
              SizedBox(
                width: 57.0,
                child: SvgPicture.asset(svgIconPath),
              )
            else
              const SizedBox(width: 15.0),
            Expanded(
              child: Text(
                title ?? '',
              ),
            ),
            const SizedBox(width: 10.0),
            CircleIcon(),
            const SizedBox(width: 10.0),
          ],
        ),
      ),
    );
  }
}
