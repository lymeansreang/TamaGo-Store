import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamago_store/common/styles/spacing_style.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? MyImages.lightAppLogo : MyImages.darkAppLogo),
                  ),
                  Text(
                    MyText.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: MySizes.sm,),
                  Text(
                    MyText.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              // Form
              Form(child: Column(
                children: [
                  /// Email
                  TextFormField(
                    decoration: InputDecoration(
                      // prefixIconColor:
                    ),
                  )
                ],
              ))

            ],
          ),
        ),
      ),
    );
  }
}
