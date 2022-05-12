/// 1ヶ月分のカレンダーを生成するクラス
class CalendarBuilder {
  /// [date]が表す日が所属する月のカレンダーを生成します
  List<List<int?>> build(DateTime date) {
    final calendar = <List<int?>>[];

    // 最初の1週を生成
    calendar.add(_buildFirstWeek(date));

    // 2週目以降を生成
    while (true) {
      final dateOfMonday = calendar.last.last! + 1;
      final thisWeek = List.generate(
        7,
        (index) {
          return dateOfMonday + index > date.lastDateOfMonth.day
              ? null // 最終日以降はnullで埋める
              : dateOfMonday + index;
        },
      );
      calendar.add(thisWeek);

      // その月の最終日まで到達していたら終了
      if (thisWeek.last == null || thisWeek.last == date.lastDateOfMonth.day) {
        break;
      }
    }

    return calendar;
  }

  List<int?> _buildFirstWeek(DateTime date) {
    final firstWeekday = date.firstDateOfMonth.weekday; // 1(mon) ~ 7(sun)
    final firstWeek = List.generate(
      7,
      (index) {
        final weekday = index + 1;
        return firstWeekday > weekday ? null : 1 - (firstWeekday - weekday);
      },
    );
    return firstWeek;
  }
}

extension _DateTimeEx on DateTime {
  DateTime get firstDateOfMonth => DateTime(year, month, 1);
  DateTime get lastDateOfMonth => DateTime(year, month + 1, 0);
}
