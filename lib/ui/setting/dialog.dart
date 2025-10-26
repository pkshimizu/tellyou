import "package:flutter/material.dart";
import "package:tellyou/ui/setting/widgets/view_list.dart";
import "package:tellyou/ui/setting/widgets/views.dart";
import "package:tellyou/ui/widgets.dart";

class SettingDialog extends TDialog {
  SettingDialog() : super(title: "Setting", size: TDialogSize.lg);

  @override
  Widget build(BuildContext context) {
    return TRow(
      gap: 2,
      children: [
        TColumn(
          gap: 1,
          width: 240,
          height: 300,
          children: [Expanded(child: SettingViewList())],
        ),
        SettingViews(),
      ],
    );
  }
}
