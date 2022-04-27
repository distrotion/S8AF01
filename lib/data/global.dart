import 'package:flutter/material.dart';
import '../page/page0.dart';

String token = '';
Widget CuPage = const Page0();
int CuPageLV = 0;
int UserLV = 0;

// class PageLevel {
//   static int page01 = 1;
//   static int page02 = 1;
//   static int page03 = 4;
//   static int page04 = 1;
//   static int page05 = 1;
//   static int page06 = 1;
//   static int page07 = 1;
//   static int page08 = 1;
//   static int page09 = 1;
//   static int page10 = 1;
// }

class logindata {
  static bool isControl = false;
  static String userID = '';
  static String userPASS = '';
}

class valueinput {
  static String poid = '';
  static String plant = '';
  static int textorvalue = 0;
  static bool isbool = false;
  static String item = '';
  static String value = '';
}

class dropdown01 {
  static List<String> CO = [''];
  static List<String> AP = [''];
  static List<String> PREMIX = [''];
  static List<String> COILCOATING = [''];
  static List<String> HYDROPHILIC = [''];
  static List<String> PLX = [''];
  static List<String> TRITRATING = [''];
  static List<String> POWDER = [''];
  static List<String> LIQUID = [''];
}
