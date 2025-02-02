import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/icons/my_circular_icon.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MyProductQuanityWithAddRemoveButton extends StatelessWidget {
  const MyProductQuanityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: MyHelperFunctions.isDarkMode(context) ? MyColors.white : MyColors.black,
          backgroundColor: MyHelperFunctions.isDarkMode(context) ? MyColors.darkerGrey : MyColors.light,
        ),
        const SizedBox(width: MySizes.spaceBtwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: MySizes.spaceBtwItems,),
        const MyCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: MyColors.white,
          backgroundColor: MyColors.primaryColor,
        ),
      ],
    );
  }
}