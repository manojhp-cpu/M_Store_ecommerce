import 'package:flutter/material.dart';
import 'package:m_store/utils/constants/colors.dart';

class MSwitchTheme {
  MSwitchTheme._();

  static SwitchThemeData lightSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
        if (states.contains(WidgetState.selected)) {
          return MColors.primary; // Thumb color when switch is ON
        }
        return Colors.grey; // Thumb color when switch is OFF
      },
    ),
    trackColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
        if (states.contains(WidgetState.selected)) {
          return MColors.primary.withOpacity(0.5); // Track color when switch is ON
        }
        return Colors.grey.withOpacity(0.3); // Track color when switch is OFF
      },
    ),
  );

  static SwitchThemeData darkSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
        if (states.contains(WidgetState.selected)) {
          return MColors.primary; // Thumb color when switch is ON in dark mode
        }
        return Colors.grey; // Thumb color when switch is OFF in dark mode
      },
    ),
    trackColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
        if (states.contains(WidgetState.selected)) {
          return MColors.primary.withOpacity(0.5); // Track color when switch is ON in dark mode
        }
        return Colors.grey.withOpacity(0.3); // Track color when switch is OFF in dark mode
      },
    ),
  );
}
