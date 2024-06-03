import 'package:flutter/material.dart';
import 'package:tamago_store/common/styles/spacing_style.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/constants/text_string.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';
class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle,required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(image),
                width: MyHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: MySizes.spaceBtwSections,),


              /// Title & SubTitle
              Text(title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MySizes.spaceBtwItems,),
              Text(subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed,
                    child: const Text(MyText.tContinue)),
              ),
              const SizedBox(height: MySizes.spaceBtwItems,),
            ],
          ),
        ),
      ),
    );
  }
}

// class VoidCallBack {
//
// }



