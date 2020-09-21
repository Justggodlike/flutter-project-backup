import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotifyProviderWidget<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget child) builder;
  final T providerModel;
  final Widget child;
  final Function(T) onModelReady;

  NotifyProviderWidget({
    this.builder,
    this.providerModel,
    this.child,
    this.onModelReady,
  });

  @override
  _NotifyProviderWidgetState<T> createState() =>
      _NotifyProviderWidgetState<T>();
}

class _NotifyProviderWidgetState<T extends ChangeNotifier>
    extends State<NotifyProviderWidget> {
  T providerModel;

  @override
  void initState() {
    providerModel = widget.providerModel;
    if (widget.onModelReady != null) {
      widget.onModelReady(providerModel);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => providerModel,
      child: Consumer<T>(
        child: widget.child,
        builder: widget.builder,
      ),
    );
  }
}
