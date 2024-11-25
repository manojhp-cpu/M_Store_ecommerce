import 'package:flutter/material.dart';
import 'package:m_store/common/styles/spacing_style.dart';
import 'package:m_store/features/authentication/screen/login/widgets/login_form.dart';
import 'package:m_store/features/authentication/screen/login/widgets/login_header.dart';
import 'package:m_store/utils/constants/sizes.dart';
import 'package:m_store/utils/constants/text_strings.dart';
import '../../../../common/widgets/login_signup/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/login_signup/social_button.dart';


class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              MLoginHeader(),

              //Form
              MLoginForm(),

              MFormDivider(
                dividerText: MTexts.orSignInWith,
              ),
              SizedBox(
                height: MSizes.spaceBtwSections,
              ),

              MSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
