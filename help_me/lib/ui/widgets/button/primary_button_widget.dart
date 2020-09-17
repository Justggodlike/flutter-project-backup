import 'package:flutter/cupertino.dart';
import 'package:help_me/ui/widgets/button/index.dart';

class PrimaryButtonWidget extends ButtonBaseWidget {
  PrimaryButtonWidget({
    @required String text,
    @required Function() onPressedFunction,
    bool isDisabled = false,
  }) : super(
          text: text,
          buttonColor: Color(0xFFFF6969),
          textColor: Color(0xffffffff),
          onPressed: onPressedFunction,
          isDisabled: isDisabled,
        );
}
