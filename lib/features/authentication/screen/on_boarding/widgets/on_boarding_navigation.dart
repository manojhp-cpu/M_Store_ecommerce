import 'package:flutter/cupertino.dart';
import 'package:m_store/features/authentication/controllers/on_boarding/onboarding_controller.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final isDark = MHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: MDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: isDark ? MColors.light : MColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}