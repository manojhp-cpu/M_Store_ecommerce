import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enum.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/container/rounded_container.dart';
import '../images/m_circular_image.dart';
import '../text/m_brand_title_with_verification.dart';

class MBrandCard extends StatelessWidget {
  const MBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
    required this.brandName,
    this.noProducts,
    required this.productLogo,
  });

  final bool showBorder;
  final String brandName;
  final String? noProducts;
  final String productLogo;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MRoundedContainer(
        padding: const EdgeInsets.all(MSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: MCircularImage(
                image: productLogo,
                overLayColor: MHelperFunctions.isDarkMode(context)
                    ? MColors.white
                    : MColors.black,
              ),
            ),
            const SizedBox(
              height: MSizes.spaceBtwItems,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MBrandTitleWithVerificationIcon(
                    title: brandName,
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '$noProducts Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
