import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MyBillingAddressSection extends StatelessWidget {
  const MyBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MySectionHeading(title: 'Shipping Address', buttonTitle: 'Change',onPressed: (){},),
        Text('Ly Meansreang' , style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: MySizes.spaceBtwItems / 2,),

        Row(
          children: [
            const Icon(Icons.phone, color: MyColors.grey, size: 16,),
            const SizedBox(width: MySizes.spaceBtwItems,),
            Text('+855 77377590', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2,),

        Row(
          children: [
            const Icon(Icons.location_history, color: MyColors.grey, size: 16,),
            const SizedBox(width: MySizes.spaceBtwItems,),
            Text('Psa Depo 3, Phnom Penh, Cambodia', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2,)
      ],
    );
  }
}
