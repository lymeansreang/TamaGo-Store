import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/chips/choice_chip.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:tamago_store/common/widgets/texts/product_title_text.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MyProductAttributes extends StatelessWidget {
  const MyProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        MyRoundedContainer(
          padding: const EdgeInsets.all(MySizes.md),
          backgroundColor: dark ? MyColors.darkerGrey : MyColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const MySectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: MySizes.spaceBtwItems,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const MyProductTitleText(title: 'Price', smallSize: true,),
                          const SizedBox(width: MySizes.spaceBtwItems,),
                          /// Actual Price
                          Text('\$25',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough ),),
                          const SizedBox(width: MySizes.spaceBtwItems,),
                          /// Sale price
                          Text('\$20',
                              style: Theme.of(context).textTheme.titleSmall),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const MyProductTitleText(title: 'Stock : ',smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const MyProductTitleText(
                  title: 'This is the Description of the product and it can go upto max 4 lines.',
                  smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(width: MySizes.spaceBtwItems,),

        /// -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Colors',showActionButton: false,),
            const SizedBox(width: MySizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(text: 'Green',selected: true,onSelected: (value){},),
                MyChoiceChip(text: 'Blue',selected: false,onSelected: (value){},),
                MyChoiceChip(text: 'Black',selected: false,onSelected: (value){},),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Sizes',showActionButton: false,),
            const SizedBox(width: MySizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(text: 'EU 34',selected: true,onSelected: (value){},),
                MyChoiceChip(text: 'EU 36',selected: false,onSelected: (value){},),
                MyChoiceChip(text: 'EU 38',selected: false,onSelected: (value){},),
              ],
            ),
          ],
        ),
      ],
    );
  }
}


