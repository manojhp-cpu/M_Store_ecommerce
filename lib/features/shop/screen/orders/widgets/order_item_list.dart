import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MOrderList extends StatelessWidget {
  const MOrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: MSizes.spaceBtwItems,
      ),
      itemCount: 3,
      itemBuilder: (_, index) => InkWell(
        borderRadius: BorderRadius.circular(MSizes.cardRadiusLg),
        onTap: (){},
        child: MRoundedContainer(
          showBorder: true,
          padding: const EdgeInsets.all(MSizes.md),
          backgroundColor:
              MHelperFunctions.isDarkMode(context) ? MColors.dark : MColors.light,
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.timelapse),
                  const SizedBox(
                    width: MSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .apply(color: MColors.primary, fontSizeDelta: 1),
                        ),
                        Text(
                          '10-Nov-2024',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.arrow_right_34),
                  )
                ],
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),
              Row(
                children: [
                  const Icon(Iconsax.tag),
                  const SizedBox(
                    width: MSizes.spaceBtwItems,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: MColors.darkGrey, fontSizeDelta: 1),
                        ),
                        Text('[#17541]',
                            style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Iconsax.calendar),
                        const SizedBox(
                          width: MSizes.spaceBtwItems / 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .apply(color: MColors.darkGrey),
                            ),
                            Text(
                              '10-Nov-2024',
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
