import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomListItem extends StatelessWidget {
  final String title;
  final Function onTap;

  const BottomListItem({Key key, this.title, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}
