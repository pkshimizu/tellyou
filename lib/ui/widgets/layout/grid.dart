import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class TGrid extends StatelessWidget {
  final List<TrackSize> _rowSizes;
  final double? _rowGap;
  final List<TrackSize> _columnSizes;
  final double? _columnGap;
  final List<Widget> _children;

  const TGrid({super.key, rows, rowGap, required columns, columnGap, children})
    : _rowSizes = rows,
      _rowGap = rowGap,
      _columnSizes = columns,
      _columnGap = columnGap,
      _children = children;

  @override
  Widget build(BuildContext context) {
    return LayoutGrid(
      rowSizes: _rowSizes,
      rowGap: _rowGap,
      columnSizes: _columnSizes,
      columnGap: _columnGap,
      children: _children,
    );
  }
}
