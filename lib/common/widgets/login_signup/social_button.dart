import 'package:flutter/material.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: MyColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: MySizes.iconMd,
              height: MySizes.iconMd,
              image: AssetImage(MyImages.google),
            ),
          ),
        ),
        const SizedBox(width: MySizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: MyColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: MySizes.iconMd,
              height: MySizes.iconMd,
              image: AssetImage(MyImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}