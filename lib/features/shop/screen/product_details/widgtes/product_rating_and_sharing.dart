import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class MRatingsAndShare extends StatelessWidget {
  const MRatingsAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: Colors.amber,
            ),
            const SizedBox(
              width: MSizes.spaceBtwItems / 2,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '0.5 ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const TextSpan(
                    text: '(199)',
                  ),
                ],
              ),
            )
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share))
      ],
    );
  }
}
