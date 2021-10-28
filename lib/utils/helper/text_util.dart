import 'dart:math';

class TextUtil {
  static bool validateName(String text) {
    return text.contains(RegExp(r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$"));
  }

  static bool validateNumber(String text) {
    Pattern pattern = r'^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$';
    RegExp regex = RegExp(pattern as String);
    return regex.hasMatch(text);
  }

  static bool validateEmail(String text) {
    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern as String);
    return regex.hasMatch(text);
  }

  static String capitalize(String value) {
    return (value.length > 0)
        ? value[0].toUpperCase() + value.substring(1)
        : value[0].toUpperCase();
  }

  static String toRupiah(String? symbol, int value, bool noRp) {
    return '${noRp ? '' : 'Rp '}${value.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}${symbol == null ? '.' : symbol}')}';
  }

  static int randomInt(int min, int max) => min + Random().nextInt(max - min);

  /*
  * to remove all char between two char is write that 2 char and place .*? in midle of those 2 char
  */
  static String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<.*?>|&.*?;", multiLine: true, caseSensitive: false);

    return htmlText.replaceAll(exp, '');
  }
}
