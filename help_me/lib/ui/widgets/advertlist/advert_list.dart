// import 'package:flutter/material.dart';
// import 'package:help_me/ui/widgets/advert/index.dart';
// import 'package:flutter/cupertino.dart';

// class LazyLoadingPage extends StatefulWidget {
//   @override
//   _LazyLoadingPageState createState() => _LazyLoadingPageState();
// }

// class _LazyLoadingPageState extends State<LazyLoadingPage> {
//   List myList;
//   ScrollController _scrollController = ScrollController();
//   int _currentMax = 10;
//   List<Widget> itemsList = [StandardAdvert(), StandardAdvert(), StandardAdvert(), StandardAdvert(), StandardAdvert()];

//   @override
//   void initState() {
//     super.initState();
//     myList = List.generate(10, (i) => "Item : ${i + 1}");
//     _scrollController.addListener(() {
//       if (_scrollController.position.pixels ==
//           _scrollController.position.maxScrollExtent) {
//         _getMoreData();
//       }
//     });
//   }

//     _getMoreData() {
//     for (int i = _currentMax; i < _currentMax + 10; i++) {
//       myList.add("Item : ${i + 1}");
//     }

//     _currentMax = _currentMax + 10;

//     setState(() {});
//   }


//     @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Lazy Loading"),
//       ),
//       body: ListView.builder(
//         controller: _scrollController,
//         itemExtent: 80,
//         itemBuilder: (context, i) {
//           if (i == myList.length) {
//             return CupertinoActivityIndicator();
//           }
//           return ListTile(
//             title: Text(myList[i]),
//           );
//         },
//         itemCount: myList.length + 1,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:help_me/ui/widgets/advert/index.dart';

class LazyLoadingPage extends StatefulWidget {
  @override
  _LazyLoadingPageState createState() => _LazyLoadingPageState();
}

class _LazyLoadingPageState extends State<LazyLoadingPage> {
  ScrollController _scrollController = ScrollController();
  int _currentMax = 10;
  List itemsList;

  @override
  void initState() {
    super.initState();
    itemsList = List.generate(10, (i) => StandardAdvert());
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  _getMoreData() {
    for (int i = _currentMax; i < _currentMax + 10; i++) {
      itemsList.add(StandardAdvert());
    }

    _currentMax = _currentMax + 10;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: _scrollController,
        itemExtent: 170,
        itemBuilder: (context, i) {
          if (i == itemsList.length) {
            return CupertinoActivityIndicator();
          }
          return itemsList[i];
        },
        itemCount: itemsList.length + 1,
      );
  }
}