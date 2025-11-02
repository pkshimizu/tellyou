// Flutter imports:
import "package:flutter/material.dart";

// Project imports:
import "package:tellyou/ui/widgets.dart";

enum TFormFieldSize {
  sm,
  md,
  lg;

  double get width {
    switch (this) {
      case sm:
        return 80.0;
      case md:
        return 160.0;
      case lg:
        return 240.0;
    }
  }
}

class TFormField extends StatelessWidget {
  final String _label;
  final Widget _child;
  final TFormFieldSize _labelSize;
  final TFormFieldSize? _formSize;

  const TFormField({
    super.key,
    required String label,
    required Widget child,
    TFormFieldSize labelSize = TFormFieldSize.md,
    TFormFieldSize? formSize,
  }) : _labelSize = labelSize,
       _formSize = formSize,
       _child = child,
       _label = label;

  @override
  Widget build(BuildContext context) {
    return TRow(
      gap: 2,
      vAlign: TRowVAlign.baseline,
      children: [
        SizedBox(width: _labelSize.width, child: TText(_label)),
        _formSize == null
            ? Expanded(child: _child)
            : SizedBox(width: _formSize.width, child: _child),
      ],
    );
  }
}
