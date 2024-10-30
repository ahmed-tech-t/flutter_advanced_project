import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_app/core/theming/colors.dart';

class TextStyles {
  static TextStyle font24Black700Weight = const TextStyle(
      fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700);

  static TextStyle font30MainBlueBold = const TextStyle(
      fontSize: 30, color: ColorsManager.mainBlue, fontWeight: FontWeight.bold);

  static TextStyle font10GrayRegular = const TextStyle(
      fontSize: 10, color: Colors.grey, fontWeight: FontWeight.normal);

  static TextStyle font16WhiteSemiBold = const TextStyle(
      fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500);
}
