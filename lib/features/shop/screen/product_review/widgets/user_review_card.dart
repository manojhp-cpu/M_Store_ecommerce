import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../common/widgets/products/ratings/product_start_ratings.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images_string.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MUserReviewCard extends StatelessWidget {
  const MUserReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(MImageStrings.user),
                ),
                const SizedBox(
                  width: MSizes.spaceBtwItems,
                ),
                Text(
                  'Rahul',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        Row(
          children: [
            const MProductStarRatings(
              ratings: 4,
            ),
            const SizedBox(
              width: MSizes.spaceBtwItems,
            ),
            Text(
              '10-Nov-2024',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: MSizes.spaceBtwSections / 2,
        ),
        const ReadMoreText(
          'This Product is amazing for Chapri Users so if you are Chapri you can go without checking the productThis Product is amazing for Chapri Users so if you are Chapri you can go without checking the product ',
          trimCollapsedText: 'read more',
          trimExpandedText: 'show less',
          trimLength: 2,
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: MColors.primary),
        ),
        const SizedBox(
          height: MSizes.spaceBtwItems,
        ),
        MRoundedContainer(
          backgroundColor: MHelperFunctions.isDarkMode(context)
              ? MColors.darkerGrey
              : MColors.light,
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "M's Store",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "11-Nov-2024",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              const SizedBox(height: MSizes.spaceBtwItems,),
              const ReadMoreText(
                'Thank you For your Valuable feedback about chapris and Chapri mobile, Thank you Thank you For your Valuable feedback about chapris and Chapri mobile, Thank you ',
                trimLength: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'read more',
                trimExpandedText: 'show less',
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: MColors.primary),
                lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: MColors.primary),
              )
            ],
          ),
        ),
        const SizedBox(height: MSizes.spaceBtwItems,)
      ],
    );
  }
}