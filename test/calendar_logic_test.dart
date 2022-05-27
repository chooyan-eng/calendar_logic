import 'package:test/test.dart';
import 'package:calendar_logic/calendar_logic.dart';

void main() {
  group('Unit Test', () {
    test('Generate a calendar on 2022/01', () {
      final DateTime date = DateTime(2022, 1, 1, 0, 0);
      final calendarData = CalendarBuilder().build(date);
      expect(calendarData, [
        [null, null, null, null, null, 1, 2],
        [3, 4, 5, 6, 7, 8, 9],
        [10, 11, 12, 13, 14, 15, 16],
        [17, 18, 19, 20, 21, 22, 23],
        [24, 25, 26, 27, 28, 29, 30],
        [31, null, null, null, null, null, null],
      ]);
    });

    test('Generate a calendar on 2022/02', () {
      final DateTime date = DateTime(2022, 2, 1, 0, 0);
      final calendarData = CalendarBuilder().build(date);
      expect(calendarData, [
        [null, 1, 2, 3, 4, 5, 6],
        [7, 8, 9, 10, 11, 12, 13],
        [14, 15, 16, 17, 18, 19, 20],
        [21, 22, 23, 24, 25, 26, 27],
        [28, null, null, null, null, null, null],
      ]);
    });

    test('Generate a calendar on 2022/03', () {
      final DateTime date = DateTime(2022, 3, 1, 0, 0);
      final calendarData = CalendarBuilder().build(date);
      expect(calendarData, [
        [null, 1, 2, 3, 4, 5, 6],
        [7, 8, 9, 10, 11, 12, 13],
        [14, 15, 16, 17, 18, 19, 20],
        [21, 22, 23, 24, 25, 26, 27],
        [28, 29, 30, 31, null, null, null],
      ]);
    });

    test('Generate a calendar on 2022/04', () {
      final DateTime date = DateTime(2022, 4, 1, 0, 0);
      final calendarData = CalendarBuilder().build(date);
      expect(calendarData, [
        [null, null, null, null, 1, 2, 3],
        [4, 5, 6, 7, 8, 9, 10],
        [11, 12, 13, 14, 15, 16, 17],
        [18, 19, 20, 21, 22, 23, 24],
        [25, 26, 27, 28, 29, 30, null],
      ]);
    });

    test('Generate a calendar on 2022/05', () {
      final DateTime date = DateTime(2022, 5, 1, 0, 0);
      final calendarData = CalendarBuilder().build(date);
      expect(calendarData, [
        [null, null, null, null, null, null, 1],
        [2, 3, 4, 5, 6, 7, 8],
        [9, 10, 11, 12, 13, 14, 15],
        [16, 17, 18, 19, 20, 21, 22],
        [23, 24, 25, 26, 27, 28, 29],
        [30, 31, null, null, null, null, null],
      ]);
    });

    test('Generate a calendar on 2022/06', () {
      final DateTime date = DateTime(2022, 6, 1, 0, 0);
      final calendarData = CalendarBuilder().build(date);
      expect(calendarData, [
        [null, null, 1, 2, 3, 4, 5],
        [6, 7, 8, 9, 10, 11, 12],
        [13, 14, 15, 16, 17, 18, 19],
        [20, 21, 22, 23, 24, 25, 26],
        [27, 28, 29, 30, null, null, null],
      ]);
    });
  });
}
