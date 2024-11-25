import 'package:flutter/material.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/constants/sizes.dart';

class MElevatedButtonTheme {
  MElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: MColors.primary,
      foregroundColor: MColors.light,
      disabledForegroundColor: MColors.darkGrey,
      disabledBackgroundColor: MColors.buttonDisabled,
      side: const BorderSide(
        color: MColors.primary,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: MSizes.buttonHeight,
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: MColors.textWhite,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          MSizes.buttonRadius,
        ),
      ),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: MColors.primary,
      foregroundColor: MColors.light,
      disabledForegroundColor: MColors.darkGrey,
      disabledBackgroundColor: MColors.buttonDisabled,
      side: const BorderSide(
        color: MColors.primary,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: MSizes.buttonHeight,
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: MColors.textWhite,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          MSizes.buttonRadius,
        ),
      ),
    ),
  );
}
