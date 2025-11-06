import 'package:flutter/material.dart';

abstract final class AppColors {
  static const primary = MaterialColor(0xffbd4a4a, {
    50: Color(0xfff8eded),
    100: Color(0xffebc7c7),
    200: Color(0xffe1acac),
    300: Color(0xffd38686),
    400: Color(0xffca6e6e),
    500: Color(0xffbd4a4a),
    600: Color(0xffac4343),
    700: Color(0xff863535),
    800: Color(0xff682929),
    900: Color(0xff4f1f1f),
  });

  static const secondary = MaterialColor(0xff5b90e6, {
    50: Color(0xffeff4fd),
    100: Color(0xffccddf7),
    200: Color(0xffb4ccf4),
    300: Color(0xff91b5ee),
    400: Color(0xff7ca6eb),
    500: Color(0xff5b90e6),
    600: Color(0xff5383d1),
    700: Color(0xff4166a3),
    800: Color(0xff324f7f),
    900: Color(0xff263c61),
  });

  static const background = MaterialColor(0xffe4cece, {
    50: Color(0xfffcfafa),
    100: Color(0xfff7f0f0),
    200: Color(0xfff3e8e8),
    300: Color(0xffeddede),
    400: Color(0xffe9d8d8),
    500: Color(0xffe4cece),
    600: Color(0xffcfbbbb),
    700: Color(0xffa29292),
    900: Color(0xff605757),
  });

  static const warning = MaterialColor(0xffb98e19, {
    50: Color(0xfff8f4e8),
    100: Color(0xffe9dcb8),
    200: Color(0xffdfcb95),
    300: Color(0xffd0b365),
    400: Color(0xffc7a547),
    500: Color(0xffb98e19),
    600: Color(0xffa88117),
    700: Color(0xff836512),
    800: Color(0xff664e0e),
    900: Color(0xff4e3c0b),
  });

  static const success = MaterialColor(0xff276925, {
    50: Color(0xffe9f0e9),
    100: Color(0xffbcd1bb),
    200: Color(0xff9cba9b),
    300: Color(0xff6e9b6d),
    400: Color(0xff528751),
    500: Color(0xff276925),
    600: Color(0xff236022),
    700: Color(0xff1c4b1a),
    800: Color(0xff153a14),
    900: Color(0xff102c10),
  });

  static const lightText = MaterialColor(0xffd4d4d4, {
    50: Color(0xfffbfbfb),
    100: Color(0xfff2f2f2),
    200: Color(0xffebebeb),
    300: Color(0xffe2e2e2),
    400: Color(0xffdddddd),
    500: Color(0xffd4d4d4),
    600: Color(0xffc1c1c1),
    700: Color(0xff979797),
    800: Color(0xff757575),
    900: Color(0xff595959),
  });

  static const darkText = MaterialColor(0xff303030, {
    50: Color(0xffeaeaea),
    100: Color(0xffbfbfbf),
    200: Color(0xffa0a0a0),
    300: Color(0xff747474),
    400: Color(0xff595959),
    500: Color(0xff303030),
    600: Color(0xff2c2c2c),
    700: Color(0xff222222),
    800: Color(0xff1a1a1a),
    900: Color(0xff141414),
  });
}
