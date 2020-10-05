import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomListItem extends StatelessWidget {
  final String title;
  final Function onTap;

  const BottomListItem({Key key, this.title, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        child: Text(title),
      ),
    );
  }
}
