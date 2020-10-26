import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:help_me/ui/widgets/image_carousel/index.dart';

class AdvertPage extends StatefulWidget {
  @override
  _AdvertPageState createState() => _AdvertPageState();
}

class _AdvertPageState extends State<AdvertPage> {
  String title = '"Le Italia"';
  String subtitle = 'Pizza by very comforAdvert price.';
  String description =
      'русский текструсский текструсский текструсский текстPizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price.';
  String location = 'Brest, Belarus';
  Image image = Image.asset(
    'assets/preview.jpg',
    height: 80,
    width: 120,
  );
  String price = '4.00\$';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              ImageCarousel(),
              SizedBox(
                height: 40,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        location,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          price,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 10,
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: RaisedButton(
                          onPressed: () {},
                          child:
                              const Text('call', style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: RaisedButton(
                          onPressed: () {},
                          child: const Text('message',
                              style: TextStyle(fontSize: 20)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
