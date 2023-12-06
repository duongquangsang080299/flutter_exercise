import 'package:intl/intl.dart';

String dateTimeFormat(DateTime date) {
  String convertedDate = DateFormat("dd MMMM yyyy").format(date);
  return convertedDate;
}

String formattedTime(DateTime date) {
  String formattedTime = DateFormat('HH:mm').format(date);
  return formattedTime;
}

String dateTimeFormatWithDay(DateTime date) {
  String formattedDate = DateFormat('E dd MMM').format(date);
  return formattedDate;
}

String dateMonthFormat(DateTime date) {
  String formattedDate = DateFormat('dd MMMM').format(date);
  return formattedDate;
}

String yearsFormat(DateTime date) {
  String formattedDate = DateFormat('yyyy').format(date);
  return formattedDate;
}
