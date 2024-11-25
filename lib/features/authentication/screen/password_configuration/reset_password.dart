import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_store/utils/constants/sizes.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/images_string.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image:
                    const AssetImage(MImageStrings.deliveredEmailIllustration),
                width: MHelperFunctions.screenWidth() * 0.6,
              ),

              // Title and Subtitle
              Text(
                MTexts.changeYourPasswordTitle,
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
                MTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
