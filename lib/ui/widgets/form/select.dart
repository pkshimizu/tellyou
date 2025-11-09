// Flutter imports:
import "package:flutter/material.dart";

// Project imports:
import "package:tellyou/ui/widgets.dart";

class TSelectItem<T> {
  final T _value;
  final String _text;

  TSelectItem(this._value, this._text);
}

class TSelect<T> extends StatelessWidget {
  final String? _label;
  final T? _value;
  final double _size;
  final List<TSelectItem<T>> _items;
  final void Function(T?) _onChanged;

  const TSelect({
    super.key,
    String? label,
    T? value,
    double size = 320,
    required List<TSelectItem<T>> items,
    required void Function(T?) onChanged,
  }) : _label = label,
       _value = value,
       _size = size,
       _items = items,
       _onChanged = onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _size,
      child: DropdownButtonFormField<T>(
        initialValue: _value,
        onChanged: (value) {
          _onChanged(value);
        },
        items:
            _items.map((item) {
              return DropdownMenuItem<T>(
                value: item._value,
                child: TText(item._text),
              );
            }).toList(),
        decoration: InputDecoration(
          labelText: _label,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
        ),
        isExpanded: true,
      ),
    );
  }
}
