extension StringExtension on String {
  String novalue() {
    return (this).isEmpty ? "-" : (this);
  }
}
