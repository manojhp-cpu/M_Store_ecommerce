import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images_string.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/m_rounded_image.dart';
import '../../text/m_brand_title_with_verification.dart';
import '../../text/product_title_text.dart';

class MCartItem extends StatelessWidget {
  const MCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MRoundedImage(
          imageUrl: MImageStrings.productIphone,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(MSizes.sm),
          backGroundColor: MHelperFunctions.isDarkMode(context)
              ? MColors.darkerGrey
              : MColors.lightContainer,
        ),
        const SizedBox(
          width: MSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MBrandTitleWithVerificationIcon(title: 'Apple'),
              const Flexible(
                child: MProductTitleText(
                  title: 'I phone 13 pro max',
                  maxLines: 1,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color ',
                      style: Theme.of(context).textTheme.bodySmall ,
                    ),
                    TextSpan(
                      text: 'Black ',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall ,
                    ),
                    TextSpan(
                      text: 'XL',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}