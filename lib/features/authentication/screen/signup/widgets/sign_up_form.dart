import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/features/authentication/screen/signup/verify_email.dart';
import 'package:m_store/features/authentication/screen/signup/widgets/terms_and_conditon.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MSignUpForm extends StatelessWidget {
  const MSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: MTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                  expands: false,
                ),
              ),
              const SizedBox(
                width: MSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: MTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                  expands: false,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: MSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: MTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
            expands: false,
          ),
          const SizedBox(
            height: MSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: MTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
            expands: false,
          ),
          const SizedBox(
            height: MSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: MTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
            expands: false,
          ),
          const SizedBox(
            height: MSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: MTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
            expands: false,
          ),
          const SizedBox(
            height: MSizes.spaceBtwSections,
          ),
          const MTermsAndCondtions(),
          const SizedBox(
            height: MSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(
                MTexts.createAccount,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
