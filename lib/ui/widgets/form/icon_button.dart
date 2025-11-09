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
    if (_size != null) {
      // サイズ指定がある場合は、アイコンサイズとパディングを調整
      final iconSize = _size * 0.625; // アイコンサイズはボタンサイズの62.5%
      return SizedBox(
        width: _size,
        height: _size,
        child: IconButton(
          icon: Icon(_icon, size: iconSize),
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () => _onPressed(context),
        ),
      );
    }

    return IconButton(icon: Icon(_icon), onPressed: () => _onPressed(context));
  }
}
