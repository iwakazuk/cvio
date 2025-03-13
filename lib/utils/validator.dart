class Validator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    const pattern = r'\w+@\w+\.\w+';
    final regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Invalid email format';
    }
    return null;
  }
}
