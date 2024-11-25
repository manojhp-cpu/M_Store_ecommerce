import 'package:flutter/material.dart';
import 'package:m_store/utils/constants/colors.dart';

import '../../constants/sizes.dart';

class MInputDecorationTheme {
  MInputDecorationTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MColors.darkGrey,
    suffixIconColor: MColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: MSizes.in)
    labelStyle: const TextStyle().copyWith(
      fontSize: MSizes.fontSizeMd,
      color: MColors.black,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: MSizes.fontSizeSm,
      color: MColors.black,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: MColors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MSizes.inputFieldRadius,
      ),
      borderSide: const BorderSide(
        width: 1,
        color: MColors.darkGrey,
      ),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MSizes.inputFieldRadius,
      ),
      borderSide: const BorderSide(
        width: 1,
        color: MColors.darkGrey,
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MSizes.inputFieldRadius,
      ),
      borderSide: const BorderSide(
        width: 1,
        color: MColors.dark,
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MSizes.inputFieldRadius,
      ),
      borderSide: const BorderSide(
        width: 1,
        color: MColors.warning,
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MSizes.inputFieldRadius,
      ),
      borderSide: const BorderSide(
        width: 1,
        color: MColors.warning,
      ),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MColors.darkGrey,
    suffixIconColor: MColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: MSizes.in)
    labelStyle: const TextStyle().copyWith(
      fontSize: MSizes.fontSizeMd,
      color: MColors.white,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: MSizes.fontSizeSm,
      color: MColors.white,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: MColors.white.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MSizes.inputFieldRadius,
      ),
      borderSide: const BorderSide(
        width: 1,
        color: MColors.darkGrey,
      ),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MSizes.inputFieldRadius,
      ),
      borderSide: const BorderSide(
        width: 1,
        color: MColors.darkGrey,
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MSizes.inputFieldRadius,
      ),
      borderSide: const BorderSide(
        width: 1,
        color: MColors.white,
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MSizes.inputFieldRadius,
      ),
      borderSide: const BorderSide(
        width: 1,
        color: MColors.warning,
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(
        MSizes.inputFieldRadius,
      ),
      borderSide: const BorderSide(
        width: 1,
        color: MColors.warning,
      ),
    ),
  );
}
