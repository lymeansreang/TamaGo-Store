import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/common/styles/spacing_style.dart';
import 'package:tamago_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:tamago_store/common/widgets/login_signup/form_divider.dart';
import 'package:tamago_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:tamago_store/common/widgets/login_signup/social_button.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/constants/text_string.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo
              LoginHeader(dark: dark),

              // Form
              const LoginForm(),

              /// Divider
              MyFormDivider(dividerText: MyText.orSignInWith.capitalize!,),
              const SizedBox(height: MySizes.spaceBtwItems,),
              /// Footer
              const SocialButton(),

            ],
          ),
        ),
      ),
    );
  }
}








