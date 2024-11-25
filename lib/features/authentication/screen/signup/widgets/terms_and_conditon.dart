import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MTermsAndCondtions extends StatelessWidget {
  const MTermsAndCondtions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          width: MSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${MTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 14, // Custom size
                  color: Colors.grey, // Custom color
                ),
              ),
              TextSpan(
                text: '${MTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: isDark ? MColors.light : MColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                  isDark ? Colors.white : MColors.primary,
                  fontWeight: FontWeight.bold, // Added bold
                ),
              ),
              TextSpan(
                text: '${MTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              TextSpan(
                text: MTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: isDark ? MColors.white : MColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                  isDark ? MColors.white : MColors.primary,
                  fontWeight: FontWeight.bold, // Added bold
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
