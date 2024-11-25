import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images_string.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/container/rounded_container.dart';
import 'brand_card.dart';

class MBrandShowCase extends StatelessWidget {
  const MBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(MSizes.md),
      borderColor: MColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: MSizes.spaceBtwItems),
      child: Column(
        children: [
          const MBrandCard(
            showBorder: false,
            brandName: 'Apple',
            noProducts: '80',
            productLogo: MImageStrings.appleLogo,
          ),
          const SizedBox( height: MSizes.spaceBtwItems,),
          Row(
            children: images
                .map((img) => brandTopProductImageWidget(img, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: MRoundedContainer(
        height: 100,
        margin: const EdgeInsets.only(right: MSizes.sm),
        padding: const EdgeInsets.all(MSizes.md / 2),
        backgroundColor: MHelperFunctions.isDarkMode(context)
            ? MColors.darkerGrey
            : MColors.light,
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
