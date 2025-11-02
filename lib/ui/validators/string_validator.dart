class StringValidator {
  bool _isRequired = false;
  int? _maxLength;
  int? _minLength;

  StringValidator required() {
    _isRequired = true;
    return this;
  }

  StringValidator max(int length) {
    _maxLength = length;
    return this;
  }

  StringValidator min(int length) {
    _minLength = length;
    return this;
  }

  String? validate(String? value) {
    if (_isRequired && (value == null || value.isEmpty)) {
      return "This field is required";
    }
    if (_maxLength != null && value != null && value.length > _maxLength!) {
      return "This field must be at most $_maxLength characters";
    }
    if (_minLength != null && value != null && value.length < _minLength!) {
      return "This field must be at least $_minLength characters";
    }
    return null;
  }
}
