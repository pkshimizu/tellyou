// Flutter imports:
import "package:flutter/material.dart";

// Package imports:
import "package:flutter_hooks/flutter_hooks.dart";

import "../../validators/string_validator.dart";

// Project imports:

class TTextField extends HookWidget {
  final TextEditingController _controller;
  final String? _label;
  final int _minLines;
  final int _maxLines;
  final StringValidator? _validator;
  final bool _disabled;
  final bool _readonly;
  final void Function(String?)? _onChanged;

  const TTextField({
    super.key,
    required TextEditingController controller,
    String? label,
    int minLines = 1,
    int maxLines = 1,
    bool disabled = false,
    bool readonly = false,
    StringValidator? validator,
    void Function(String?)? onChanged,
  }) : _label = label,
       _onChanged = onChanged,
       _validator = validator,
       _maxLines = maxLines,
       _minLines = minLines,
       _disabled = disabled,
       _readonly = readonly,
       _controller = controller;

  @override
  Widget build(BuildContext context) {
    final current = useState<String?>(null);
    final error = useState<String?>(null);

    return TextFormField(
      controller: _controller,
      autofocus: false,
      style: Theme.of(context).textTheme.bodyMedium,
      minLines: _minLines,
      maxLines: _maxLines,
      validator: _validator?.validate,
      decoration: InputDecoration(
        labelText: _label,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        isDense: true,
        errorText: error.value,
      ),
      enabled: !_disabled,
      readOnly: _readonly,
      onChanged: (value) {
        // https://github.com/flutter/flutter/issues/149379
        // 直前の入力の末尾が繰り返された場合、直前の入力に戻す
        if (current.value != null && current.value!.length < value.length) {
          final suffix = value.substring(current.value!.length);
          if (suffix.length > 1 && value == "${current.value}$suffix") {
            _controller.text = current.value!;
            return;
          }
        }
        current.value = value;
        if (_onChanged != null) {
          _onChanged(value);
        }
        if (_validator != null) {
          error.value = _validator.validate(_controller.text);
        }
      },
    );
  }
}
