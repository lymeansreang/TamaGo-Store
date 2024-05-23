import 'package:intl/intl.dart';

class MyFormatter {
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); //Customize the date format as needed
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    // Assuming a 10 digit US phone number format : (123) 456-7890
    if(phoneNumber.length == 12){
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3, 9)} ${phoneNumber.substring(9)}';
    }else if(phoneNumber.length == 13){
      return '(${phoneNumber.substring(0,4)}) ${phoneNumber.substring(4, 10)} ${phoneNumber.substring(10)}';
    }
    return phoneNumber;
  }
}