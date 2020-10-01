import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/widgets/bottom_list/index.dart';

class BottomListWidget extends StatelessWidget {
  final String listTitle;
  final List<BottomListItemModel> itemsList;
  final TextEditingController textFiledValueController;

  const BottomListWidget({
    @required this.listTitle,
    @required this.itemsList,
    this.textFiledValueController,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Wrap(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 24.0), //TODO repalce that bad code
                Spacer(), //TODO repalce that bad code
                Text(listTitle, style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(), //TODO repalce that bad code
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      Assets.closeIcon,
                      color: Colors.red,
                      height: 16.0,
                    ),
                    onPressed: () => navigationService.goBack(),
                  ),
                )
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              physics: BouncingScrollPhysics(),
              itemCount: itemsList.length,
              itemBuilder: (context, index) {
                final item = itemsList[index];
                return BottomListItem(
                  title: item.title,
                  onTap: () {
                    var newValue = textFiledValueController.value.copyWith(
                      text: item.title,
                    );
                    textFiledValueController.value = newValue;
                    navigationService.goBack();
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 1,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
