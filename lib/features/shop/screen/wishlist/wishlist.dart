import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/common/widgets/layout/grid_layout.dart';
import 'package:m_store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:m_store/utils/constants/sizes.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: false,
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        action: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              MGridLayout(
                  itemCount: 5,
                  itemBuilder: (_, index) => const MProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
