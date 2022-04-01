import 'package:intl/intl.dart';

String? convertDateToHumanReadableText(String? date) {
  if (date != null) {
    return DateFormat.yMMMMd('en_US')
        .format(
          DateTime.parse(date),
        )
        .toString();
  }
  
  return null;
}
