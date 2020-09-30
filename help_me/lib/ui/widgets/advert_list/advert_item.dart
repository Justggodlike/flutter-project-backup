import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AdvertItem extends StatelessWidget {
  final String title;
  final String location;
  final String dateOfCreation;
  final String imagePath;
  final String price;

  const AdvertItem({
    this.title,
    this.location,
    this.dateOfCreation,
    this.imagePath,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.white,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 12,
                  offset: Offset(0, 6),
                ),
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
                    child: Image.asset(
                      imagePath,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: RichText(
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                text: title,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
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
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            location,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                                dateOfCreation,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  flex: 4,
                ),
                SizedBox(width: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
