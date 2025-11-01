import "package:flutter/material.dart";

class TColor {
  final Color _value;

  TColor(this._value);

  Color get value => _value;
}

class TColors {
  final BuildContext _context;

  TColors(this._context);

  TColor get primary {
    return TColor(Theme.of(_context).colorScheme.primary);
  }

  TColor get onPrimary {
    return TColor(Theme.of(_context).colorScheme.onPrimary);
  }

  TColor get primaryContainer {
    return TColor(Theme.of(_context).colorScheme.primaryContainer);
  }

  TColor get onPrimaryContainer {
    return TColor(Theme.of(_context).colorScheme.onPrimaryContainer);
  }

  TColor get secondary {
    return TColor(Theme.of(_context).colorScheme.secondary);
  }

  TColor get onSecondary {
    return TColor(Theme.of(_context).colorScheme.onSecondary);
  }

  TColor get secondaryContainer {
    return TColor(Theme.of(_context).colorScheme.secondaryContainer);
  }

  TColor get error {
    return TColor(Theme.of(_context).colorScheme.error);
  }

  TColor get onError {
    return TColor(Theme.of(_context).colorScheme.onError);
  }

  TColor get errorContainer {
    return TColor(Theme.of(_context).colorScheme.errorContainer);
  }

  // カードやダイアログの背景色に使用する
  TColor get surfaceContainer {
    return TColor(Theme.of(_context).colorScheme.surfaceContainer);
  }
}
