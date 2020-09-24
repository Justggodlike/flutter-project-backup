import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:help_me/ui/widgets/advert/index.dart';

class AdvertPage extends StatefulWidget {
  @override
  _AdvertPageState createState() => _AdvertPageState();
}

class _AdvertPageState extends State<AdvertPage> {
  String title = '"Le Italia"';
  String subtitle = 'Pizza by very comforAdvert price.';
  String description = 'Pizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price. Pizza by very comforAdvert price.';
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
    return Column(
      children: <Widget>[
        SizedBox(
          height: 200,
          child: Row(
            children: <Widget>[
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: image,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          child: Row(
            children: <Widget>[
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    location
                  ),
                ),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    price,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: Row(
            children: <Widget>[
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: new TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
