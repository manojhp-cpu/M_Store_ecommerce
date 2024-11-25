import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layout/grid_layout.dart';
import '../product_card/product_card_vertical.dart';

class MSortableProduct extends StatelessWidget {
  const MSortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Drop-Down
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'sale',
            'Newest',
            'popularity'
          ]
              .map(
                (options) => DropdownMenuItem(
              value: options,
              child: Text(options),
            ),
          )
              .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(
          height: MSizes.spaceBtwSections,
        ),

        MGridLayout(
          itemCount: 8,
          itemBuilder: (_, __) => const MProductCardVertical(),
        ),
      ],
    );
  }
}