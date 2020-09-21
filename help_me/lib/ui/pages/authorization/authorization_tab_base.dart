import 'package:flutter/material.dart';

class AuthorizationTabBase extends StatelessWidget {
  final List<Widget> children;

  AuthorizationTabBase({
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, viewportConstraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
              horizontal: 10), //TODO: look in docs!!!
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: viewportConstraints.maxHeight),
            child: IntrinsicHeight(
              //TODO: look in docs!!!
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              ),
            ),
          ),
        );
      },
    );
  }
}
