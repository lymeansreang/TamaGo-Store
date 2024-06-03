import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:tamago_store/features/authentication/screens/signup/signup.dart';
import 'package:tamago_store/navigation_menu.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/constants/text_string.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MySizes.spaceBtwSections),
        child: Column(
          children: [

            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MyText.email,
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwInputFields,),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MyText.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwInputFields / 2,),

            /// Remember Me & Forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(MyText.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child:const Text(MyText.forgetPassword),),
              ],
            ),
            const SizedBox(height: MySizes.spaceBtwSections,),

            /// Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child:
                const Text(MyText.signIn),
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwItems,),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(MyText.createAccount),),
            ),
          ],
        ),
      ),
    );
  }
}