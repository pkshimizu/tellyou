import 'package:flutter/material.dart';

enum TAvatarSize {
  xs(value: 12),
  sm(value: 16),
  md(value: 20),
  lg(value: 24),
  xl(value: 28);

  final double value;

  const TAvatarSize({required this.value});
}

class TAvatar extends StatelessWidget {
  final String _url;
  final TAvatarSize _size;

  const TAvatar({
    super.key,
    required String url,
    TAvatarSize size = TAvatarSize.md,
  }) : _url = url,
       _size = size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundImage: NetworkImage(_url),
      radius: _size.value,
    );
  }
}
