import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/core/services/index.dart';

class StandardAdvert extends StatefulWidget {
  @override
  _StandardAdvertState createState() => _StandardAdvertState();
}

class _StandardAdvertState extends State<StandardAdvert> {
  String title = 'Advert name';
  String location = 'Belarus,Brest';
  String dateOfCreation = '24.09.2020 22:02';

  Image image = Image.asset(
    'assets/preview.jpg',
    height: 80,
    width: 80,
  );
  String price = '5.00\$';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        navigationService.navigateTo(Pages.advert),
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.pink],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: [
                  BoxShadow(
                      color: Colors.red, blurRadius: 12, offset: Offset(0, 6)),
                ],
              ),
            ),
            Positioned.fill(
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: image,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Text(
                              price,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            location,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: Text(
                              dateOfCreation,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    flex: 4,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
