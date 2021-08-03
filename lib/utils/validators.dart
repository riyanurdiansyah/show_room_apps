class FieldValidator {
  static requiredField(String value, {String errorMessage}) =>
      value.isEmpty ? errorMessage ?? 'Kolom tidak boleh kosong' : null;

  static matchPassword(String value,
          {String errorMessage, String confirmPass}) =>
      value != confirmPass || value.isEmpty
          ? errorMessage ?? 'Kolom tidak boleh kosong'
          : null;
}
