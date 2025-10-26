import "package:flutter/material.dart";
import "package:tellyou/ui/widgets.dart";

class SettingDialog extends TDialog {
  SettingDialog() : super(title: "Setting", size: TDialogSize.lg);

  @override
  Widget build(BuildContext context) {
    return TRow(
      children: [
        TColumn(
          gap: 1,
          children: [
            TButton(
              text: "General",
              size: TButtonSize.md,
              onPressed: (context) {},
            ),
            TButton(
              text: "GitHub",
              size: TButtonSize.md,
              onPressed: (context) {},
            ),
          ],
        ),
      ],
    );
  }
}
