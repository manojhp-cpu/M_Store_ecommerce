import 'package:flutter/material.dart';

import '../../constants/colors.dart';


class MTextButtonTheme {

  static final lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: MColors.dark,
    )
  );

  static final darkTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: MColors.white,
    )
  );
}