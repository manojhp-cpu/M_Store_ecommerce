import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/features/shop/screen/cart/cart.dart';

import '../../../../../common/widgets/app_bar/appbar.dart';
import '../../../../../common/widgets/products/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class MHomeAppBar extends StatelessWidget {
  const MHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MAppBar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: MColors.grey),
          ),
          Text(
            MTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: MColors.grey),
          ),
        ],
      ),
      action: [
        MCartCounterIcon(
          onPressed: () => Get.to(() => const CartScreen()),
          iconColor: MColors.white,
        )
      ],
    );
  }
}
