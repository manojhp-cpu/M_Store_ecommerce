import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/text/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class MCartItems extends StatelessWidget {
  const MCartItems({
    super.key, required this.showAddRemoveButton,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: MSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const MCartItem(),
          if(showAddRemoveButton)const SizedBox(
            height: MSizes.spaceBtwItems,
          ),
          if(showAddRemoveButton)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  MProductQuantityAddRemove(),
                ],
              ),
              MProductPriceText(price: '55000')
            ],
          )
        ],
      ),
    );
  }
}