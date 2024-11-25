import 'package:flutter/material.dart';
import 'package:m_store/features/authentication/controllers/on_boarding/onboarding_controller.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Positioned(
      top: MDeviceUtils.getAppBarHeight(),
      right: MSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: Text(
          'Skip',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
