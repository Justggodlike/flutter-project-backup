import 'package:flutter/material.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/ui/widgets/sphere_list_widget/index.dart';

class SphereItemsListWidget extends StatelessWidget {
  final List<SphereItemModel> itemsList;

  const SphereItemsListWidget({Key key, this.itemsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(0),
      physics: BouncingScrollPhysics(),
      itemCount: itemsList.length,
      itemBuilder: (context, index) {
        final item = itemsList[index];
        return InkWell(
          onTap: () => {
            navigationService.navigateTo(Pages.finalCreate),
          },
          child: SphereItem(
            itemModel: item,
          ),
        );
      },
    );
  }
}
