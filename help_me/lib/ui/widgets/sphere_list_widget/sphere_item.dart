import 'package:flutter/material.dart';
import 'package:help_me/ui/widgets/sphere_list_widget/index.dart';

class SphereItem extends StatelessWidget {
  final SphereItemModel itemModel;

  const SphereItem({Key key, this.itemModel}) : super(key: key);
  static const double _height = 60.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Text(itemModel.title),
          ],
        ),
      ),
    );
  }
}
