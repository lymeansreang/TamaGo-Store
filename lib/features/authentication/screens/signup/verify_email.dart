import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            padding: EdgeInsets.all(MySizes.defaultSpace),
        child: Column(
          children: [

            /// Image
            Image(
              image: AssetImage(MyImages.successImage1),
              width: MyHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: MySizes.spaceBtwSections,),
            
            
            /// Title & SubTitle
            Text(MyText.confirmEmail,
            style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: MySizes.spaceBtwItems,),



            /// Buttons




          ],
        ),
        ),
      ),
    );
  }
}
