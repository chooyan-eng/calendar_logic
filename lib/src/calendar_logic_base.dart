/// 1ヶ月分のカレンダーを生成するクラス
class CalendarBuilder {
  /// [date]が表す日が所属する月のカレンダーを生成します
  List<List<int?>> build(DateTime date) {
    final calendar = <List<int?>>[];

    final firstWeekday = _calcFirstWeekday(date);
    final lastDate = _calcLastDate(date);

    final firstWeek = List.generate(7, (index) {
      final i = index + 1; // index は 0 はじまりのため、1 はじまりの曜日と合わせる
      final offset = i - firstWeekday; // 一日の曜日との差
      return i < firstWeekday ? null : 1 + offset;
    });

    calendar.add(firstWeek);

    while (true) {
      final firstDateOfWeek = calendar.last.last! + 1; // 前の週の最終日の次の日がスタート

      final week = List.generate(7, (index) {
        final date = firstDateOfWeek + index; // 追加する日付
        return date <= lastDate ? date : null; // 最終日以前なら採用、それ以降は null
      });

      calendar.add(week); // 週のリストを月のリストに追加

      // すでに最終日まで追加し終わっていたら終了
      final lastDateOfWeek = week.last;
      if (lastDateOfWeek == null || lastDateOfWeek >= lastDate) {
        break;
      }
    }

    return calendar;
  }

  /// [date] が所属する月の一日の曜日を計算します。
  /// 月曜日を 1 とし、日曜日は 7 です。
  int _calcFirstWeekday(DateTime date) {
    return DateTime(date.year, date.month, 1).weekday;
  }

  /// [date] が所属する月の最後の日を計算します。
  int _calcLastDate(DateTime date) {
    return DateTime(date.year, date.month + 1, 0).day;
  }
}
