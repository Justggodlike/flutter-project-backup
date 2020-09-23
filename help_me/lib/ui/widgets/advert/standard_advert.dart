import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:line_icons/line_icons.dart';

class StandardAdvert extends StatefulWidget {
  @override
  _StandardAdvertState createState() =>
      _StandardAdvertState();
}

class _StandardAdvertState extends State<StandardAdvert> {

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget> [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.red,
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.pink],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 12,
                      offset: Offset(0, 6)

                    ),
                  ],
                )
              ),
              Positioned.fill(
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Container(
                      width: 80,
                      height: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('assets/preview.jpg', height: 80, width: 80,),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget> [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                                '"Le Italia"',
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
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                                'Pizza by very comforAdvert price.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              child: Text(
                                '4.00\$',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      flex: 4,
                    ),
                    SizedBox(width: 30),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}
