// Flutter imports:
import "package:flutter/material.dart";

// Project imports:
import "package:tellyou/ui/colors.dart";

enum TTextStyle { headline, title, body, label }

class TText extends StatelessWidget {
  final String _value;
  final TTextStyle? _style;
  final TColor? _color;

  const TText(this._value, {super.key, TTextStyle? style, TColor? color})
    : _style = style,
      _color = color;

  @override
  Widget build(BuildContext context) {
    return Text(
      _value,
      style: _textStyle(context)?.copyWith(color: _color?.value),
      overflow: TextOverflow.ellipsis,
    );
  }

  TextStyle? _textStyle(BuildContext context) {
    switch (_style) {
      case null:
        return Theme.of(context).textTheme.bodyMedium;
      case TTextStyle.headline:
        return Theme.of(context).textTheme.headlineMedium;
      case TTextStyle.title:
        return Theme.of(context).textTheme.titleMedium;
      case TTextStyle.body:
        return Theme.of(context).textTheme.bodyMedium;
      case TTextStyle.label:
        return Theme.of(context).textTheme.labelMedium;
    }
  }
}
