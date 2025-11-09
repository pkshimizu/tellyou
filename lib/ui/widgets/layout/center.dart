import "package:flutter/material.dart";

class TCenter extends StatelessWidget {
  final Widget _child;

  const TCenter({super.key, required Widget child}) : _child = child;

  @override
  Widget build(BuildContext context) {
    return Center(child: _child);
  }
}
