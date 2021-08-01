import 'package:intl/intl.dart';

String convertTime(int time) {
  var date = DateTime.fromMillisecondsSinceEpoch(time);
  var formattedDate = DateFormat.yMMMd().format(date); // Apr 8, 2020
  return formattedDate;
}
