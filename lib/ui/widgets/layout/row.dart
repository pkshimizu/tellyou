import "package:flutter/material.dart";

enum TRowHAlign {
  start(value: MainAxisAlignment.start),
  center(value: MainAxisAlignment.center),
  end(value: MainAxisAlignment.end),
  spaceBetween(value: MainAxisAlignment.spaceBetween),
  spaceAround(value: MainAxisAlignment.spaceAround);

  const TRowHAlign({required this.value});

  final MainAxisAlignment value;
}

enum TRowVAlign {
  start(value: CrossAxisAlignment.start),
  center(value: CrossAxisAlignment.center),
  end(value: CrossAxisAlignment.end),
  baseline(value: CrossAxisAlignment.baseline);

  const TRowVAlign({required this.value});

  final CrossAxisAlignment value;
}

class TRow extends StatelessWidget {
  final List<Widget> _children;
  final TRowHAlign _hAlign;
  final TRowVAlign _vAlign;
  final int _gap;
  final double? _width;
  final double? _height;

  const TRow({
    super.key,
    int gap = 0,
    double? width,
    double? height,
    TRowHAlign hAlign = TRowHAlign.start,
    TRowVAlign vAlign = TRowVAlign.start,
    required List<Widget> children,
  }) : _gap = gap,
       _width = width,
       _height = height,
       _hAlign = hAlign,
       _vAlign = vAlign,
       _children = children;

  @override
  Widget build(BuildContext context) {
    return _wrappedSizedBox(
      Row(
        mainAxisAlignment: _hAlign.value,
        crossAxisAlignment: _vAlign.value,
        textBaseline:
            _vAlign == TRowVAlign.baseline ? TextBaseline.alphabetic : null,
        spacing: (_gap * 4).toDouble(),
        children: _children,
      ),
    );
  }

  Widget _wrappedSizedBox(Widget child) {
    if (_width == null && _height == null) {
      return child;
    }
    return SizedBox(width: _width, height: _height, child: child);
  }
}
