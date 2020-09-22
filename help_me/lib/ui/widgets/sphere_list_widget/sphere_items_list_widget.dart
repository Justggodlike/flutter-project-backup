import 'package:flutter/material.dart';
import 'package:help_me/ui/widgets/sphere_list_widget/index.dart';

class SphereItemsListWidget extends StatelessWidget {
  final List<SphereItemModel> itemsList;

  const SphereItemsListWidget({Key key, this.itemsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemsList.length,
      itemBuilder: (context, index) {
        final item = itemsList[index];
        return SphereItem(
          itemModel: item,
        );
      },
    );
  }
}
