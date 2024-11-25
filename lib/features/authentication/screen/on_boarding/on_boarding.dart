import 'package:flutter/material.dart';
import 'package:m_store/features/authentication/controllers/on_boarding/onboarding_controller.dart';
import 'package:m_store/features/authentication/screen/on_boarding/widgets/on_boarding_.dart';
import 'package:m_store/features/authentication/screen/on_boarding/widgets/on_boarding_navigation.dart';
import 'package:m_store/features/authentication/screen/on_boarding/widgets/on_boarding_next_button.dart';
import 'package:m_store/features/authentication/screen/on_boarding/widgets/on_borad_skip.dart';
import 'package:m_store/utils/constants/images_string.dart';
import 'package:m_store/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controler.pageController,
            onPageChanged: controler.upDatePageIndex,
            children: const [
              OnBoardingPage(
                title: MTexts.onBoardingTitle1,
                image: MImageStrings.onBoardingImage1,
                subTitle: MTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                title: MTexts.onBoardingTitle2,
                image: MImageStrings.onBoardingImage2,
                subTitle: MTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                title: MTexts.onBoardingTitle3,
                image: MImageStrings.onBoardingImage3,
                subTitle: MTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const onBoardingSkip(),
          const OnBoardingNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

