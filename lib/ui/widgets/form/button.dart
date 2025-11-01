import "package:flutter/material.dart";

import "package:tellyou/ui/widgets.dart";

// Project imports:

enum TButtonStyle { text, outlined, elevated }

enum TButtonDirection { horizontal, vertical }

enum TButtonSize {
  xs(width: 80.0),
  sm(width: 120.0),
  md(width: 180.0),
  lg(width: 240.0);

  const TButtonSize({required this.width});

  final double width;
}

class TButton extends StatelessWidget {
  final TButtonStyle? _style;
  final Function(BuildContext context) _onPressed;
  final String? _text;
  final IconData? _icon;
  final bool? _disabled;
  final TButtonDirection _direction;
  final TTextStyle? _textStyle;
  final TButtonSize? _size;
  final bool _selected;

  const TButton({
    super.key,
    required dynamic Function(BuildContext) onPressed,
    String? text,
    TButtonStyle? style,
    IconData? icon,
    bool? disabled,
    TButtonDirection direction = TButtonDirection.horizontal,
    TTextStyle? textStyle,
    TButtonSize? size,
    bool selected = false,
  }) : _disabled = disabled,
       _icon = icon,
       _text = text,
       _onPressed = onPressed,
       _style = style,
       _direction = direction,
       _textStyle = textStyle,
       _size = size,
       _selected = selected;

  @override
  Widget build(BuildContext context) {
    final button = _buildButton(context);
    if (_size == null) {
      return button;
    }
    return SizedBox(width: _size.width, child: button);
  }

  Widget _buildButton(BuildContext context) {
    switch (_style) {
      case TButtonStyle.text:
        return TextButton.icon(
          icon: _iconWidget,
          label: _labelWidget,
          onPressed: _onPressedHandler(context),
          style: TextButton.styleFrom(
            shape: _shape(),
            backgroundColor: _backgroundColor(context),
          ),
        );
      case TButtonStyle.elevated:
        return ElevatedButton.icon(
          icon: _iconWidget,
          label: _labelWidget,
          onPressed: _onPressedHandler(context),
          style: ElevatedButton.styleFrom(
            shape: _shape(),
            backgroundColor: _backgroundColor(context),
          ),
        );
      case TButtonStyle.outlined:
      default:
        return OutlinedButton.icon(
          icon: _iconWidget,
          label: _labelWidget,
          onPressed: _onPressedHandler(context),
          style: OutlinedButton.styleFrom(
            shape: _shape(),
            backgroundColor: _backgroundColor(context),
          ),
        );
    }
  }

  Widget? get _iconWidget {
    if (_icon == null) {
      return null;
    }
    if (_direction == TButtonDirection.vertical) {
      return null;
    }
    return Icon(_icon);
  }

  Widget get _labelWidget {
    if (_text == null) {
      return TText("");
    }
    if (_icon != null && _direction == TButtonDirection.vertical) {
      return TPadding(
        v: 8,
        child: TColumn(
          hAlign: TColumnHAlign.center,
          children: [Icon(_icon), TText(_text, style: _textStyle)],
        ),
      );
    }
    return TText(_text, style: _textStyle);
  }

  Function()? _onPressedHandler(BuildContext context) {
    if (_disabled == true) {
      return null;
    }
    return () {
      _onPressed(context);
    };
  }

  OutlinedBorder _shape() {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));
  }

  Color? _backgroundColor(BuildContext context) {
    if (_selected) {
      return Theme.of(context).focusColor;
    }
    return null;
  }
}
