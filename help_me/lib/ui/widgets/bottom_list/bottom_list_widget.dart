import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/widgets/bottom_list/index.dart';

class BottomListWidget extends StatelessWidget {
  final List<BottomListItemModel> itemsList;
  final TextEditingController textFiledValueController;

  const BottomListWidget({
    @required this.itemsList,
    this.textFiledValueController,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Wrap(
          children: <Widget>[
            Row(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: SvgPicture.asset(
                      Assets.closeIcon,
                      color: Colors.red,
                      height: 18.0,
                    ),
                    onPressed: () => navigationService.goBack(),
                  ),
                )
              ],
            ),
            ListView.builder(
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
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
