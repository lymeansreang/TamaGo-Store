import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/features/authentication/screens/signup/verify_email.dart';
import 'package:tamago_store/features/authentication/screens/signup/widgets/term_condition_checkbox.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/constants/text_string.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
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
            decoration: const InputDecoration(
              labelText: MyText.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: MySizes.spaceBtwInputFields,),

          /// Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: MyText.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: MySizes.spaceBtwInputFields,),

          /// Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: MyText.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: MySizes.spaceBtwInputFields,),

          /// Password
          TextFormField(
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
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text(MyText.createAccount)),),
        ],
      ),
    );
  }
}

