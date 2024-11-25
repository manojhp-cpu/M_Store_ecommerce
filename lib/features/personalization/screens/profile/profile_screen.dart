import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/common/widgets/images/m_circular_image.dart';
import 'package:m_store/common/widgets/text/section_heading.dart';
import 'package:m_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/constants/images_string.dart';
import 'package:m_store/utils/constants/sizes.dart';

class MProfileScreen extends StatelessWidget {
  const MProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const MCircularImage(
                      image: MImageStrings.user,
                      width: 50,
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change profile picture'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),

              const MSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),

              MProfileMenu(
                title: 'Name',
                value: 'Manoj HP',
                onPressed: () {},
              ),
              MProfileMenu(
                title: 'User name',
                value: 'Manoj_hp',
                onPressed: () {},
              ),

              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),

              const MSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),
              MProfileMenu(
                title: 'User Id',
                value: 'S0063',
                onPressed: () {},
              ),
              MProfileMenu(
                title: 'E-mail',
                value: 'manojhp584@gmail.com',
                onPressed: () {},
              ),
              MProfileMenu(
                title: 'Phone',
                value: '+91-6361337631',
                onPressed: () {},
              ),
              MProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              MProfileMenu(
                title: 'Date of Birth',
                value: '24-09-2003',
                onPressed: () {},
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Delete Account",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: MColors.error),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
