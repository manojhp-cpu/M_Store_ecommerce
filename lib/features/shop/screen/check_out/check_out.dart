import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:m_store/features/shop/screen/cart/widgets/cart_items.dart';
import 'package:m_store/features/shop/screen/check_out/widgets/address_section.dart';
import 'package:m_store/features/shop/screen/check_out/widgets/amount_section.dart';
import 'package:m_store/features/shop/screen/check_out/widgets/payment_method_section.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/constants/sizes.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              ///Items in Cart
              const MCartItems(showAddRemoveButton: false),
              const SizedBox(
                height: MSizes.spaceBtwSections,
              ),

              ///Coupon Text Feild
              const MCouponCode(),

              const SizedBox(
                height: MSizes.spaceBtwSections,
              ),

              /// Billing Section
              MRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(MSizes.md),
                backgroundColor: isDark ? MColors.dark : MColors.white,
                child: const Column(
                  children: [
                    MBillingAmountSection(),
                    SizedBox(
                      height: MSizes.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: MSizes.spaceBtwItems,
                    ),
                    MPaymentMethodSection(),
                    SizedBox(
                      height: MSizes.spaceBtwSections,
                    ),
                    MAddressSection()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: const Text('Check Out Rs.55000')),
      ),
    );
  }
}
