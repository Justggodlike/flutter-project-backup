import 'package:help_me/ui/widgets/bottom_list/index.dart';

class ListForBottomListWidget {
  final List<BottomListItemModel> itmesList = [
    BottomListItemModel(title: 'No reason'),
    BottomListItemModel(title: 'Part time'),
    BottomListItemModel(title: 'Free schedule'),
    BottomListItemModel(title: 'Remote work'),
    BottomListItemModel(title: 'Half a day'),
  ];

  getItems() {
    return itmesList;
  }
}
