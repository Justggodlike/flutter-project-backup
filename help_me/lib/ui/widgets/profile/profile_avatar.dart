import 'package:flutter/cupertino.dart';
import 'package:help_me/ui/decorations/index.dart';

class ProfileAvatar extends StatelessWidget {
  final double profileImageHeight;

  const ProfileAvatar({
    this.profileImageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: profileImageHeight,
      width: profileImageHeight,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(Assets.avatar),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
