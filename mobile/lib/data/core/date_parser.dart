abstract class DateParser {
  static String dateToString(DateTime? date) {
    if (date == null) {
      return '';
    }
    final now = DateTime.now();
    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return 'Today';
    }
    return '${date.day}.${date.month}';
  }

  static DateTime stringToDate(String dateString) {
    final parts =
        dateString.split(RegExp(r' |:|-')).map((e) => int.parse(e)).toList();
    return DateTime(parts[0], parts[2], parts[1], parts[3], parts[4]);
  }
}
