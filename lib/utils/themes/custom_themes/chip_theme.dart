import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MChipTheme {
  MChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: MColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: MColors.black),
    selectedColor: MColors.primary,
    padding: const EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 12,
    ),
    checkmarkColor: MColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: MColors.darkGrey,
    labelStyle: TextStyle(color: MColors.white),
    selectedColor: MColors.primary,
    padding: EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 12,
    ),
    checkmarkColor: MColors.white,
  );
}
