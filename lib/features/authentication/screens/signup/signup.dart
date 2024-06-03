import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/common/widgets/login_signup/form_divider.dart';
import 'package:tamago_store/common/widgets/login_signup/social_button.dart';
import 'package:tamago_store/features/authentication/screens/login/login.dart';
import 'package:tamago_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/constants/text_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Title
              Text(MyText.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Form
              const MySignupForm(),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Divider
              MyFormDivider(dividerText: MyText.orSignUpWith.capitalize!),
              const SizedBox(height: MySizes.spaceBtwItems,),
              // Social button
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}


