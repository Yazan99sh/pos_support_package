extension DateTimeExtension on DateTime {
  bool get isToday {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final date = DateTime(year, month, day);
    return date == today;
  }
  bool isSameDayOf(DateTime otherDate) {
    final today = DateTime(otherDate.year, otherDate.month, otherDate.day);
    final date = DateTime(year, month, day);
    return date == today;
  }
}
