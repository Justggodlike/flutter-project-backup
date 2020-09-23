import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/widgets/sphere_list_widget/index.dart';

final List<SphereItemModel> sphereList = [
  SphereItemModel(
    'first',
  ),
  SphereItemModel(
    'Second',
  ),
  SphereItemModel(
    'Third',
  ),
  SphereItemModel(
    'Some Scope',
  ),
  SphereItemModel(
    'Sphere',
  ),
  SphereItemModel(
    'first',
  ),
];

class VacancyCategoriesPage extends StatefulWidget {
  @override
  _VacancyCategoriesPageState createState() => _VacancyCategoriesPageState();
}

class _VacancyCategoriesPageState extends State<VacancyCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffffffffff),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              Assets.closeIcon,
              color: Colors.red,
              height: 18.0,
            ),
            onPressed: () => navigationService.goBack(),
          )
        ],
      ),
      backgroundColor: Color(0xffffffffff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                localization.selectScopeOfEmployment,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 20),
              SphereItemsListWidget(
                itemsList: sphereList,
              )
            ],
          ),
        ),
      ),
    );
  }
}
