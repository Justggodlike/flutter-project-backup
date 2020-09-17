import 'package:flutter/cupertino.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/widgets/button/index.dart';

class PrimaryButtonWidget extends ButtonBaseWidget {
  PrimaryButtonWidget({
    @required String text,
    @required Function() onPressedFunction,
    bool isEnabled = false,
    String assetIconPath = Assets.arrowRight,
    bool isDisabled = false,
  }) : super(
          text: text,
          assetsIcon: assetIconPath,
          buttonColor: Color(0xFFFF6969),
          textColor: Color(0xffffffff),
          onPressed: onPressedFunction,
          isDisabled: isDisabled,
        );
}
