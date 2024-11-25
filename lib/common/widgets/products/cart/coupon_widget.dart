import 'package:flutter/material.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../custom_shapes/container/rounded_container.dart';

class MCouponCode extends StatelessWidget {
  const MCouponCode({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return MRoundedContainer(
      showBorder: true,
      backgroundColor: isDark ? MColors.dark : MColors.light,
      padding: const EdgeInsets.only(
        top: MSizes.sm,
        bottom: MSizes.sm,
        right: MSizes.sm,
        left: MSizes.md,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          ///button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: isDark
                  ? MColors.white.withOpacity(0.5)
                  : MColors.dark.withOpacity(0.5),
              backgroundColor: MColors.grey.withOpacity(0.3),
              side: BorderSide(
                color: MColors.grey.withOpacity(0.2),
              ),
            ),
            child: const Text('Apply'),
          ),
        ],
      ),
    );
  }
}
