import 'package:flutter/material.dart';

import "package:tellyou/ui/widgets.dart";

class TScaffold extends StatelessWidget {
  final Widget _body;
  final String? _title;
  final List<Widget> _actions;

  const TScaffold({
    super.key,
    required Widget body,
    String? title,
    List<Widget> actions = const <Widget>[],
  }) : _body = body,
       _title = title,
       _actions = actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          _title != null || _actions.isNotEmpty
              ? AppBar(
                title:
                    _title == null
                        ? null
                        : TText(_title, style: TTextStyle.headline),
                centerTitle: false,
                actions: _actions,
              )
              : null,
      body: TPadding(h: 16, child: _body),
    );
  }
}
