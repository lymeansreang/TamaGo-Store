import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/common/widgets/success_screen/success_screen.dart';
import 'package:tamago_store/features/authentication/screens/login/login.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/constants/text_string.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
          children: [

            /// Image
            Image(
              image: const AssetImage(MyImages.successImage1),
              width: MyHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: MySizes.spaceBtwSections,),
            
            
            /// Title & SubTitle
            Text(MyText.confirmEmail,
            style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: MySizes.spaceBtwItems,),
            Text('lmsreang3@gmail.com',
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: MySizes.spaceBtwItems,),
            Text(MyText.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: MySizes.spaceBtwSections,),

            /// Buttons
            SizedBox(
              width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => SuccessScreen(
                  image: MyImages.successImage2,
                  title: MyText.yourAccountCreatedTitle,
                  subTitle: MyText.yourAccountCreatedSubTitle,
                onPressed: () => Get.to(() => const LoginScreen()),
                ) ),
                child: const Text(MyText.tContinue)),
            ),
            const SizedBox(height: MySizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(MyText.resendEmail)),
            ),

          ],
        ),
        ),
      ),
    );
  }
}
