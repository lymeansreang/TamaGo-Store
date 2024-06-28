import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/text_string.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MyTermAndConditionCheckbox extends StatelessWidget {
  const MyTermAndConditionCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Obx(() => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value)),
        ),
        // const SizedBox(width: MySizes.spaceBtwItems,),
        Text.rich(
            TextSpan(
              children: [
                TextSpan(text: '${MyText.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: '${MyText.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? MyColors.white : MyColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? MyColors.white : MyColors.primaryColor,
                )),
                TextSpan(text: MyText.and, style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: MyText.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? MyColors.white : MyColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? MyColors.white : MyColors.primaryColor,
                ),
                ),


              ],
            ))
      ],
    );
  }
}