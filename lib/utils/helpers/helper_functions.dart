import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class MyHelperFunctions{
  static Color? getColor(String value) {

    if(value == 'Green'){
      return Colors.green;
    }else if(value ==  'Green'){
      return Colors.green;
    }else if(value == 'Red'){
      return Colors.red;
    }else if(value == 'Blue'){
      return Colors.blue;
    }else if(value == 'Pink'){
      return Colors.pink;
    }else if(value == 'Grey'){
      return Colors.grey;
    }else if(value == 'Purple'){
      return Colors.purple;
    }else if(value == 'Black'){
      return Colors.black;
    }else if(value == 'White'){
      return Colors.white;
    }
  }
}