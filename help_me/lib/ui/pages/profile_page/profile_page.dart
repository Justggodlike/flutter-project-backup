import 'package:flutter/material.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/widgets/profile/index.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            localization.profile,
            style: Theme.of(context).textTheme.headline6,
          ),
          Row(
            children: [
              ProfileAvatar(
                profileImageHeight: 100,
              ),
              const SizedBox(width: 20.0),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Jaber', //TODO; get from the provider
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Container(
                      child: Text(
                        'jaber123@email.com', //TODO; get from the provider
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
