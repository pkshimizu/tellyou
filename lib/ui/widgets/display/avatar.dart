import 'package:flutter/material.dart';

class TAvatar extends StatelessWidget {
  final String _url;

  const TAvatar({super.key, required String url}) : _url = url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(foregroundImage: NetworkImage(_url));
  }
}
