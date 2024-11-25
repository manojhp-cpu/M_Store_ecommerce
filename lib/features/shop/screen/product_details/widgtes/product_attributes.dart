import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/text/product_title_text.dart';
import 'package:m_store/common/widgets/text/section_heading.dart';

import '../../../../../common/widgets/chips/choice_chips.dart';
import '../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MProductAttributes extends StatelessWidget {
  const MProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MRoundedContainer(
          margin: const EdgeInsets.only(top: MSizes.spaceBtwItems),
          backgroundColor: MHelperFunctions.isDarkMode(context)
              ? MColors.darkContainer
              : MColors.grey,
          padding: const EdgeInsets.all(MSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const MSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: MSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const MProductTitleText(
                            title: 'Price : ',
                            smallSize: true,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context).textTheme.titleSmall!,
                          ),
                        ],
                      ),
                      const SizedBox(width: MSizes.spaceBtwItems),
                      Row(
                        children: [
                          const MProductTitleText(
                            title: 'Stock : ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems / 2,
              ),
              const MProductTitleText(
                title:
                    'I Phone 13 pro max ultra legend chapri mobile Black color',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: MSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            Wrap(
              children: [
                MChoiceChips(
                  text: 'Black',
                  selected: true,
                  onSelected: (value) {},
                ),
                MChoiceChips(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                MChoiceChips(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MSectionHeading(
              title: 'Sizes',
              showActionButton: false,
            ),
            Wrap(
              spacing: 10,
              children: [
                MChoiceChips(
                  text: 'L',
                  selected: false,
                  onSelected: (value) {},
                ),
                MChoiceChips(
                  text: 'XL',
                  selected: true,
                  onSelected: (value) {},
                ),
                MChoiceChips(
                  text: 'XXL',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
