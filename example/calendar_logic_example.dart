import 'package:calendar_logic/calendar_logic.dart';

void main() {
  final calendar = CalendarBuilder().build(DateTime.now());
  print(calendar.join('\n'));
}
