import 'package:flutter/material.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../common/widgets/text/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images_string.dart';
import '../../../../../utils/constants/sizes.dart';

class MPaymentMethodSection extends StatelessWidget {
  const MPaymentMethodSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        MSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Row(
          children: [
            MRoundedContainer(
              width: 60,
              height: 40,
              backgroundColor: isDark ? MColors.light : MColors.white,
              padding: const EdgeInsets.all(MSizes.sm),
              child: Image.asset(
                MImageStrings.googlePayLogo,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: MSizes.spaceBtwItems,
            ),
            Text(
              'Google pay',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        )
      ],
    );
  }
}
