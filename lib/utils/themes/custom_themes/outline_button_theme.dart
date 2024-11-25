import 'package:flutter/material.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../constants/colors.dart';

class MOutLineButtonTheme {
  MOutLineButtonTheme._();

  static final lightOutLineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: MColors.dark,
      side: const BorderSide(
        color: MColors.borderPrimary,
      ),
      textStyle: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: MColors.black,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: MSizes.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          MSizes.buttonRadius,
        ),
      ),
    ),
  );

  static final darkOutLineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: MColors.white,
      side: const BorderSide(
        color: MColors.primary,
      ),
      textStyle: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: MColors.black,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: MSizes.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          MSizes.buttonRadius,
        ),
      ),
    ),
  );
}
