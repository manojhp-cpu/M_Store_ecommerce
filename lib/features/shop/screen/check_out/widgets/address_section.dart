import 'package:flutter/material.dart';

import '../../../../../common/widgets/text/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class MAddressSection extends StatelessWidget {
  const MAddressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: (){},
        ),
        Text(
          'Manoj hp',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: MSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: MColors.grey,
              size: 16,
            ),
            const SizedBox(
              width: MSizes.spaceBtwItems,
            ),
            Text(
              '+91-6361337631',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: MSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: MColors.grey,
              size: 16,
            ),
            const SizedBox(
              width: MSizes.spaceBtwItems,
            ),
            Expanded(
              child: Text(
                'South Liana, Maine 87694, USA',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            )
          ],
        )
      ],
    );
  }
}
