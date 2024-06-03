import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/styles/shadow_style.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:tamago_store/common/widgets/icons/my_circular_icon.dart';
import 'package:tamago_store/common/widgets/images/my_rounded_image.dart';
import 'package:tamago_store/common/widgets/texts/my_brand_title_text_with_verified_icon.dart';
import 'package:tamago_store/common/widgets/texts/product_price_text.dart';
import 'package:tamago_store/common/widgets/texts/product_title_text.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MyProductVertical extends StatelessWidget {
  const MyProductVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    /// Container with side paddings, color, edge, radius and shadow.
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MyShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: dark ? MyColors.darkerGrey : MyColors.white,
        ),
        child: Column(
          children: [
            /// -- Thumbnail, Wishlist, Button, Discount tag
            MyRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(1),
              backgroundColor: dark ? MyColors.dark : MyColors.light,
              child: Stack(
                children: [

                  /// -- Thumbnail Image
                  const MyRoundedImage(
                    imageUrl: MyImages.productImg1,
                    applyImageRadius: true,
                  ),


                  /// -- Sale Tag
                  Positioned(
                    top: 12,
                    left: 10,
                    child: MyRoundedContainer(
                      radius: MySizes.sm,
                      backgroundColor: MyColors.secondaryColor.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: MySizes.sm, vertical: MySizes.xs),
                      child: Text('30%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(color: MyColors.black),
                      ),
                    ),
                  ),

                  /// -- Favorite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: MyCircularIcon(icon: Iconsax.heart5, color: Colors.red,))
                ],
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwItems / 2,),

            /// -- Details
            const Padding(
                padding: EdgeInsets.only(left: MySizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyProductTitleText(title: 'Green Nike Air Shoes',smallSize: true,),
                    SizedBox(height: MySizes.spaceBtwItems / 2,),
                    MyBrandTitleWithVerifiedIcon(title: 'Nike'),
                  ],
                ),
            ),

            // Todo: Add Spacer() here to keep the height of each Box same in case 1 or 2 lines of headings
            const Spacer(),

            /// -- Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// -- Price
                const Padding(
                  padding: EdgeInsets.only(left: MySizes.sm),
                  child: MyProductPriceText(price: '35.99',),
                ),

                Container(
                  decoration: const BoxDecoration(
                      color: MyColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(MySizes.cardRadiusMd),
                        bottomRight: Radius.circular(MySizes.productImageRadius),
                      )
                  ),
                  child: const SizedBox(
                    width: MySizes.iconLg *1.2,
                    height: MySizes.iconLg *1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: MyColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}






