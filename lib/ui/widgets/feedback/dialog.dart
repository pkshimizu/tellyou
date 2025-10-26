// Flutter imports:
import "package:flutter/material.dart";

// Project imports:
import "package:tellyou/ui/colors.dart";
import "package:tellyou/ui/widgets.dart";

enum TDialogSize {
  sm(width: 240.0),
  md(width: 480.0),
  lg(width: 960.0);

  const TDialogSize({required this.width});

  final double width;
}

abstract class TDialog {
  final String _title;
  final TDialogSize _size;
  BuildContext? _context;

  TDialog({TDialogSize size = TDialogSize.md, String title = ""})
    : _size = size,
      _title = title;

  void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        _context = context;
        return FittedBox(
          fit: BoxFit.none,
          child: Material(
            elevation: 10,
            color: Colors.transparent,
            child: Container(
              width: _size.width,
              decoration: BoxDecoration(
                color: TColors(context).surfaceContainer.value,
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: TColumn(
                children: [
                  _header(context),
                  TPadding(all: 16, child: build(context)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context);

  void close() {
    if (_context != null) {
      Navigator.pop(_context!);
    }
  }

  Widget _header(BuildContext context) {
    return TPadding(
      h: 16,
      child: TRow(
        hAlign: TRowHAlign.spaceBetween,
        vAlign: TRowVAlign.center,
        children: [
          TText(_title, style: TTextStyle.title),
          TIconButton(
            icon: Icons.close,
            onPressed: (_) {
              close();
            },
          ),
        ],
      ),
    );
  }
}
