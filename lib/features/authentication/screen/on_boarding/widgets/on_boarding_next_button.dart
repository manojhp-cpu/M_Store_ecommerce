import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/features/authentication/controllers/on_boarding/onboarding_controller.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    final buttonColor = isDark ? MColors.primary : MColors.dark;
    return Positioned(
      right: MSizes.defaultSpace,
      bottom: MDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: buttonColor
        ),
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
