// Flutter imports:
import "package:flutter/material.dart";
import "package:tellyou/domain/values/path.dart" as path;
import "package:tellyou/ui/colors.dart";
import "package:tellyou/ui/widgets.dart";

// Project imports:

class TListItem {
  final String _title;
  final String? _subtitle;
  final IconData? _icon;
  final path.Path? _imagePath;
  final bool _selected;
  final double _topLeftRadius;
  final double _topRightRadius;
  final double _bottomLeftRadius;
  final double _bottomRightRadius;
  final TColor? _color;
  final VoidCallback? _onTap;

  const TListItem({
    required String title,
    String? subtitle,
    IconData? icon,
    path.Path? imagePath,
    bool selected = false,
    double topLeftRadius = 0,
    double topRightRadius = 0,
    double bottomLeftRadius = 0,
    double bottomRightRadius = 0,
    TColor? color,
    VoidCallback? onTap,
  }) : _onTap = onTap,
       _selected = selected,
       _icon = icon,
       _imagePath = imagePath,
       _title = title,
       _subtitle = subtitle,
       _topLeftRadius = topLeftRadius,
       _topRightRadius = topRightRadius,
       _bottomLeftRadius = bottomLeftRadius,
       _bottomRightRadius = bottomRightRadius,
       _color = color;
}

class TListView extends StatelessWidget {
  final List<TListItem> _items;

  const TListView({super.key, required List<TListItem> items}) : _items = items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        final item = _items[index];
        return Material(
          child: ListTile(
            title: TText(item._title),
            subtitle:
                item._subtitle == null
                    ? null
                    : TText(item._subtitle, style: TTextStyle.label),
            leading: _leading(item),
            selected: item._selected,
            selectedTileColor: TColors(context).primaryContainer.value,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(item._topLeftRadius),
                topRight: Radius.circular(item._topRightRadius),
                bottomLeft: Radius.circular(item._bottomLeftRadius),
                bottomRight: Radius.circular(item._bottomRightRadius),
              ),
            ),
            onTap: item._onTap,
            dense: true,
          ),
        );
      },
    );
  }

  Widget? _leading(TListItem item) {
    if (item._icon != null) {
      return Icon(item._icon);
    }
    if (item._imagePath != null) {
      return Image.file(item._imagePath.file, width: 24, height: 24);
    }
    return null;
  }
}
