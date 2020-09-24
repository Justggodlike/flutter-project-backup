import 'package:flutter/material.dart';
import 'package:help_me/ui/widgets/menu/index.dart';

class MenuItemList extends StatelessWidget {
  static const itemHeight = 48.0;
  final List<MenuItemModel> itemsList;

  const MenuItemList({Key key, this.itemsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: itemsList.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = itemsList[index];

              return MenuItem(
                title: item.title,
                svgIconPath: item.svgIconPath,
                onTap: item.onTap,
                height: itemHeight,
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey,
                height: 1.0,
                indent: 57.0,
                endIndent: 30.0,
                thickness: 1,
              );
            },
          ),
        ),
      ],
    );
  }
}
