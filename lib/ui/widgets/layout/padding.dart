// Flutter imports:
import "package:flutter/material.dart";

class TPadding extends StatelessWidget {
  final Widget _child;
  final double? _all;
  final double? _h;
  final double? _v;
  final double? _top;
  final double? _bottom;
  final double? _left;
  final double? _right;

  const TPadding({
    super.key,
    required Widget child,
    double? all,
    double? h,
    double? v,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) : _child = child,
       _all = all,
       _h = h,
       _v = v,
       _top = top,
       _bottom = bottom,
       _left = left,
       _right = right;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: _makePadding(), child: _child);
  }

  EdgeInsetsGeometry _makePadding() {
    if (_all != null) {
      return EdgeInsets.all(_all);
    }
    if (_h != null || _v != null) {
      return EdgeInsets.symmetric(vertical: _v ?? 0, horizontal: _h ?? 0);
    }
    return EdgeInsets.fromLTRB(
      _left ?? 0,
      _top ?? 0,
      _right ?? 0,
      _bottom ?? 0,
    );
  }
}
