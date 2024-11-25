import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/login_signup/login_signup/form_divider.dart';
import 'package:m_store/common/widgets/login_signup/login_signup/social_button.dart';
import 'package:m_store/features/authentication/screen/signup/widgets/sign_up_form.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../../utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: MSizes.spaceBtwSections,
              ),

              // Form
              const MSignUpForm(),

              const SizedBox(
                height: MSizes.spaceBtwSections,
              ),
              const MFormDivider(
                dividerText: MTexts.orSignInWith,
              ),
              const SizedBox(
                height: MSizes.spaceBtwSections,
              ),
              const MSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

