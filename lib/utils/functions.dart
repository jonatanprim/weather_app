import 'package:intl/intl.dart';

class Functions{

  static getCelsiusTemp(temp){
    return "${(temp - 273.15).toStringAsFixed(1)} \u2103";
  }
  static getDateWithDay(date, type) {
    var parseDate = DateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
    DateFormat formatterDate1 = DateFormat('EEE, MMM dd, yyyy hh:mm a');
    DateFormat formatterDate2 = DateFormat('EEEE, MMMM dd, yyyy \nhh:mm a');
    String value;
    if(type == 1){
      value = formatterDate1.format(parseDate).toString();
    }
    else{
      value = formatterDate2.format(parseDate).toString();
    }
    return value;
  }
}
