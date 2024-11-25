import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class MFormDivider extends StatelessWidget {
  const MFormDivider({
    super.key,
    required this.dividerText,
  });
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: isDark ? MColors.darkGrey : MColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText, // Manually capitalize first letter
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDark ? MColors.darkGrey : MColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );

  }
}
