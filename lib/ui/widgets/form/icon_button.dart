// Flutter imports:
import "package:flutter/material.dart";

class TIconButton extends StatelessWidget {
  final IconData _icon;
  final double? _size;
  final void Function(BuildContext context) _onPressed;

  const TIconButton({
    super.key,
    required IconData icon,
    double? size,
    required void Function(BuildContext) onPressed,
  }) : _onPressed = onPressed,
       _icon = icon,
       _size = size;

  @override
  Widget build(BuildContext context) {
    return _sized(
      IconButton(icon: Icon(_icon), onPressed: () => _onPressed(context)),
    );
  }

  Widget _sized(Widget child) {
    if (_size == null) {
      return child;
    }
    return SizedBox(width: _size, height: _size, child: child);
  }
}
