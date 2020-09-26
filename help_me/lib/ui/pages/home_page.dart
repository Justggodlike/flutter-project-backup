import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/decorations/assets.dart';
import 'package:help_me/ui/pages/advertpage/index.dart';
import 'package:help_me/ui/widgets/advert_list/index.dart';
import 'package:help_me/ui/widgets/image_carousel/index.dart';

class HomePage extends StatelessWidget {
  final List<AdvertItemModel> advertsList = [
    AdvertItemModel(
      nameAdvert: 'I want paste here long name and watch what happens',
      price: '200 p.',
      imagePath: Assets.avatar,
      dateOfCreation: '22.09.20 12:43',
      location: 'Pinsk',
    ),
    AdvertItemModel(
      nameAdvert: 'I want paste here long name and watch what happens',
      price: '200 p.',
      imagePath: Assets.avatar,
      dateOfCreation: '22.09.20 12:43',
      location: 'Pinsk',
    ),
    AdvertItemModel(
      nameAdvert: 'I want paste here long name and watch what happens',
      price: '200 p.',
      imagePath: Assets.avatar,
      dateOfCreation: '22.09.20 12:43',
      location: 'Pinsk',
    ),
    AdvertItemModel(
      nameAdvert: 'I want paste here long name and watch what happens',
      price: '200 p.',
      imagePath: Assets.avatar,
      dateOfCreation: '22.09.20 12:43',
      location: 'Pinsk',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);
    // return AdvertListWidget(
    //   itemsList: advertsList,
    // );
    return AdvertPage();
  }
}
