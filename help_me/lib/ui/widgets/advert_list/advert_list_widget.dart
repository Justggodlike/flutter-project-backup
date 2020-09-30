import 'package:flutter/material.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/ui/widgets/advert_list/advert_item_model.dart';
import 'package:help_me/ui/widgets/advert_list/index.dart';

class AdvertListWidget extends StatelessWidget {
  final List<AdvertItemModel> itemsList;

  const AdvertListWidget({
    Key key,
    @required this.itemsList,
  }) : super(key: key);

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
            navigationService.navigateTo(Pages.advert),
          },
          child: AdvertItem(
            title: item.nameAdvert,
            price: item.price,
            imagePath: item.imagePath,
            location: item.location,
            dateOfCreation: item.dateOfCreation,
          ),
        );
      },
    );
  }
}
