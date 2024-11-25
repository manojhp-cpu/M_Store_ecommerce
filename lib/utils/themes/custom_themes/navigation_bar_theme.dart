import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MNavigationBarTheme {
  MNavigationBarTheme._();

  static NavigationBarThemeData lightNavigationBarTheme =
      NavigationBarThemeData(
    indicatorColor: MColors.primary,
    iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
      (state) {
        if (state.contains(WidgetState.selected)) {
          return const IconThemeData(color: MColors.light);
        }
        return const IconThemeData(color: MColors.dark);
      },
    ),
  );
  static const NavigationBarThemeData darkNavigationBarTheme =
      NavigationBarThemeData(
        indicatorColor: MColors.primary,
      );
}
