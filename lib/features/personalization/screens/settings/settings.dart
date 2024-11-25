import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:m_store/common/widgets/text/section_heading.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../common/widgets/list_tile/settings_menu_tile.dart';
import '../../../../common/widgets/list_tile/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../shop/screen/cart/cart.dart';
import '../../../shop/screen/orders/orders.dart';
import '../address/address.dart';
import '../profile/profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-- Header
            MPrimaryHeaderContainer(
              child: Column(
                children: [
                  MAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: MColors.white),
                    ),
                    showBackArrow: false,
                  ),
                  MUserProfileTile(
                    onPressed: () => Get.to(() => const MProfileScreen()),
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            //-- body
            Padding(
              padding: const EdgeInsets.all(MSizes.defaultSpace),
              child: Column(
                children: [
                  const MSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwItems,
                  ),
                  MSettingsMenuTile(
                    title: 'My Address',
                    leadingIcon: Iconsax.safe_home,
                    subTitle: 'Set your shopping delivery address',
                    onPressed: () => Get.to(() => const AddressesScreen()),
                  ),
                  MSettingsMenuTile(
                    title: 'My cart',
                    leadingIcon: Iconsax.shopping_cart,
                    subTitle: 'Add,remove products and move to checkout',
                    onPressed: () => Get.to(() => const CartScreen()),
                  ),
                  MSettingsMenuTile(
                    title: 'My Order',
                    leadingIcon: Iconsax.bag_tick,
                    subTitle: 'In-progress and Complete order',
                    onPressed: () => Get.to(()=> const OrdersScreen()),
                  ),
                  MSettingsMenuTile(
                    title: 'Bank account',
                    leadingIcon: Iconsax.bank,
                    subTitle: 'Withdraw balance to registered bank account',
                    onPressed: () {},
                  ),
                  MSettingsMenuTile(
                    title: 'My Coupon',
                    leadingIcon: Iconsax.discount_shape,
                    subTitle: 'List of all discount coupons',
                    onPressed: () {},
                  ),
                  MSettingsMenuTile(
                    title: 'Bank account',
                    leadingIcon: Iconsax.notification,
                    subTitle: 'Set any kind of notification message',
                    onPressed: () {},
                  ),
                  MSettingsMenuTile(
                    title: 'Account Privacy',
                    leadingIcon: Iconsax.security_card,
                    subTitle: 'Manage data usage & connected accounts',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwSections,
                  ),
                  const MSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: MSizes.spaceBtwItems),
                  MSettingsMenuTile(
                    leadingIcon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firestore',
                    onPressed: () {},
                  ),
                  MSettingsMenuTile(
                    title: 'Account Privacy',
                    leadingIcon: Iconsax.security_card,
                    subTitle: 'Manage data usage & connected accounts',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  MSettingsMenuTile(
                    title: 'Safe Mode',
                    leadingIcon: Iconsax.security_user,
                    subTitle: 'Manage data usage & connected accounts',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  MSettingsMenuTile(
                    title: 'HD image quality',
                    leadingIcon: Iconsax.image,
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Log out'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
