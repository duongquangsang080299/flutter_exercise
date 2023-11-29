import 'package:intl/intl.dart';

String dateTimeFormat(DateTime date) {
  String convertedDate = DateFormat("yyyy-MM-dd").format(date);
  return convertedDate;
}
