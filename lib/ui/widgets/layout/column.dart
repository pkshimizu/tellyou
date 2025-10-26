// Flutter imports:
import "package:flutter/material.dart";

enum TColumnVAlign {
  start(value: MainAxisAlignment.start),
  center(value: MainAxisAlignment.center),
  end(value: MainAxisAlignment.end),
  spaceBetween(value: MainAxisAlignment.spaceBetween),
  spaceAround(value: MainAxisAlignment.spaceAround);

  const TColumnVAlign({required this.value});

  final MainAxisAlignment value;
}

enum TColumnHAlign {
  start(value: CrossAxisAlignment.start),
  center(value: CrossAxisAlignment.center),
  end(value: CrossAxisAlignment.end),
  baseline(value: CrossAxisAlignment.baseline);

  const TColumnHAlign({required this.value});

  final CrossAxisAlignment value;
}

class TColumn extends StatelessWidget {
  final List<Widget> _children;
  final TColumnVAlign _vAlign;
  final TColumnHAlign _hAlign;
  final int _gap;
  final double? _width;
  final double? _height;
  final bool _scrollable;
  final bool _min;

  const TColumn({
    super.key,
    int gap = 0,
    double? width,
    double? height,
    TColumnVAlign vAlign = TColumnVAlign.start,
    TColumnHAlign hAlign = TColumnHAlign.start,
    bool scrollable = false,
    bool min = false,
    required List<Widget> children,
  }) : _gap = gap,
       _width = width,
       _height = height,
       _vAlign = vAlign,
       _hAlign = hAlign,
       _scrollable = scrollable,
       _min = min,
       _children = children;

  @override
  Widget build(BuildContext context) {
    return _wrappedSizedBox(
      _wrappedScrollable(
        Column(
          mainAxisAlignment: _vAlign.value,
          crossAxisAlignment: _hAlign.value,
          mainAxisSize: _min ? MainAxisSize.min : MainAxisSize.max,
          spacing: (_gap * 4).toDouble(),
          children: _children,
        ),
      ),
    );
  }

  Widget _wrappedSizedBox(Widget child) {
    if (_width == null && _height == null) {
      return child;
    }
    return SizedBox(width: _width, height: _height, child: child);
  }

  Widget _wrappedScrollable(Widget child) {
    if (_scrollable) {
      return SingleChildScrollView(child: child);
    }
    return child;
  }
}
