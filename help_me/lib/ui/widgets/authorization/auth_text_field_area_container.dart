import 'package:flutter/material.dart';

class AuthTextFieldAreaContainer extends StatelessWidget {
  final Widget child;

  const AuthTextFieldAreaContainer({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffffffff),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 8.0),
            blurRadius: 15,
            color: Color(0xffE7EAF0),
          )
        ],
      ),
      child: child,
    );
  }
}
