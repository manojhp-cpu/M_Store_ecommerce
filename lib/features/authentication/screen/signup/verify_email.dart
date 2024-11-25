import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/features/authentication/screen/login/log_in.dart';

import '../../../../common/widgets/login_signup/succes_screen/success_screen.dart';
import '../../../../utils/constants/images_string.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LogInScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image:
                    const AssetImage(MImageStrings.deliveredEmailIllustration),
                width: MHelperFunctions.screenWidth() *0.6,
              ),

              // Title and Subtitle
              Text(
                MTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),
              Text(
                "manojhp584@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),
              Text(
                MTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: MImageStrings.staticSuccessIllustration,
                      title: MTexts.yourAccountCreatedTitle,
                      subtitle: MTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(
                        () => const LogInScreen(),
                      ),
                    ),
                  ),
                  child: const Text('Continue'),
                ),
              ),

              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Resend Email'),
                ),
              ),

              // Buttons
            ],
          ),
        ),
      ),
    );
  }
}
