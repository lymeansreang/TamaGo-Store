import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/features/authentication/controllers/login/login_controller.dart';
import 'package:tamago_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:tamago_store/features/authentication/screens/signup/signup.dart';
import 'package:tamago_store/navigation_menu.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/constants/text_string.dart';
import 'package:tamago_store/utils/validators/validation.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MySizes.spaceBtwSections),
        child: Column(
          children: [

            /// Email
            TextFormField(
              controller: controller.email,
              validator: (value) => MyValidator.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MyText.email,
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwInputFields,),

            /// Password
            Obx(
                  () => TextFormField(
                controller: controller.password,
                validator: (value) => MyValidator.validatePassword(value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  labelText: MyText.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                  ),
                ),
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
                    Obx(
                      () => Checkbox(value: controller.rememberMe.value, onChanged: (value) => controller.rememberMe.value),
                    ),
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