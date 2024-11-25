import 'package:flutter/material.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/themes/custom_themes/app_bar_theme.dart';
import 'package:m_store/utils/themes/custom_themes/bottom_sheet_theme.dart';
import 'package:m_store/utils/themes/custom_themes/check_box_theme.dart';
import 'package:m_store/utils/themes/custom_themes/chip_theme.dart';
import 'package:m_store/utils/themes/custom_themes/elevated_button_theme.dart';
import 'package:m_store/utils/themes/custom_themes/outline_button_theme.dart';
import 'package:m_store/utils/themes/custom_themes/text_field_theme.dart';
import 'package:m_store/utils/themes/custom_themes/text_themes.dart';

import 'custom_themes/swith_theme.dart';
import 'custom_themes/text_button_theme.dart';

class MAppTheme {
  MAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: MColors.white,
    textTheme: MTextTheme.lightTextTheme,
    elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
    bottomSheetTheme: MBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: MCheckBoxTheme.lightCheckboxTheme,
    outlinedButtonTheme: MOutLineButtonTheme.lightOutLineButtonTheme,
    inputDecorationTheme: MInputDecorationTheme.lightInputDecorationTheme,
    chipTheme: MChipTheme.lightChipTheme,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
    textButtonTheme: MTextButtonTheme.lightTextButtonTheme,
    switchTheme: MSwitchTheme.lightSwitchTheme
    // navigationBarTheme: MNavigationBarTheme.lightNavigationBarTheme
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: MColors.black,
    textTheme: MTextTheme.darkTextTheme,
    elevatedButtonTheme: MElevatedButtonTheme.darkElevatedButtonTheme,
    bottomSheetTheme: MBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: MCheckBoxTheme.darkCheckboxTheme,
    outlinedButtonTheme: MOutLineButtonTheme.darkOutLineButtonTheme,
    inputDecorationTheme: MInputDecorationTheme.darkInputDecorationTheme,
    chipTheme: MChipTheme.darkChipTheme,
    appBarTheme: MAppBarTheme.darkAppBarTheme,
    textButtonTheme: MTextButtonTheme.darkTextButtonTheme,
    brightness: Brightness.dark,
    switchTheme: MSwitchTheme.darkSwitchTheme
    // navigationBarTheme: MNavigationBarTheme.darkNavigationBarTheme
  );
}
