import 'package:intl/intl.dart';

main() {
  var now = DateTime.now();
  print("Date now = ${now}");
  var formatDate = DateFormat("yyyy-MM").format(now);
  print("Date Foramt : ${formatDate}");

  var date = DateTime(1999, 03, 24);
  print(date);

  //parse date time from String
  var date2 = DateTime.tryParse("2018-11-17");
  print("date 2 : ${date2}");

  print(now.add(Duration(days: 5)));
  print(now.subtract(Duration(days: 5)));

  print(now.difference(date).inSeconds);
}
