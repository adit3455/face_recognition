extension StringExtension on String {
  String nonumber() {
    return ((this).isEmpty || ((this) == null) || ((this) == 'null'))
        ? "0"
        : (this);
  }
}
