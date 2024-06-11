import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:tamago_store/features/authentication/screens/signup/verify_email.dart';
import 'package:tamago_store/features/authentication/screens/signup/widgets/term_condition_checkbox.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/constants/text_string.dart';
import 'package:tamago_store/utils/validators/validation.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstname,
                  validator: (value) => MyValidator.validateEmptyText('First Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: MyText.firstname,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: MySizes.spaceBtwInputFields,),
              Expanded(
                child: TextFormField(
                  controller: controller.lastname,
                  validator: (value) => MyValidator.validateEmptyText('Last Name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: MyText.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),),
              ),
            ],
          ),
          const SizedBox(height: MySizes.spaceBtwInputFields,),

          /// Username
          TextFormField(
            controller: controller.username,
            validator: (value) => MyValidator.validateEmptyText('Username', value),
            decoration: const InputDecoration(
              labelText: MyText.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: MySizes.spaceBtwInputFields,),

          /// Email
          TextFormField(
            controller: controller.email,
            validator: (value) => MyValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: MyText.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: MySizes.spaceBtwInputFields,),

          /// Phone Number
          TextFormField(
            controller: controller.phoneNum,
            validator: (value) => MyValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: MyText.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: MySizes.spaceBtwInputFields,),

          /// Password
          TextFormField(
            controller: controller.password,
            validator: (value) => MyValidator.validatePassword(value),
            obscureText: true,
            decoration: const InputDecoration(
              labelText: MyText.password,
              prefixIcon: Icon(Iconsax.user_edit),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: MySizes.spaceBtwInputFields,),

          /// Term & Conditions Checkbox
          const MyTermAndConditionCheckbox(),
          const SizedBox(height: MySizes.spaceBtwSections,),

          /// Sign up button
          SizedBox(width: double.infinity,
            child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: const Text(MyText.createAccount)),),
        ],
      ),
    );
  }
}

