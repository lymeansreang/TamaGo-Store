import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:tamago_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:tamago_store/features/shop/screens/product_details/widgets/product_detail_Image_slider.dart';
import 'package:tamago_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:tamago_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: MyBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// 1 - Product Image Slider
            const MyProductImageSlider(),

            /// 2 - Product Details
            Padding(
                padding: const EdgeInsets.only(right: MySizes.defaultSpace, left: MySizes.defaultSpace, bottom: MySizes.defaultSpace),
                child: Column(
                  children: [

                    /// - Rating & Share Button
                    const MyRatingAndShare(),

                    /// - Price, Title, Stock, & Brand
                    const MyProductMetaData(),

                    /// -- Attributes
                    const MyProductAttributes(),
                    const SizedBox(height: MySizes.spaceBtwSections,),

                    /// -- Checkout Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){},
                          child: const Text('Checkout')),
                    ),
                    const SizedBox(height: MySizes.spaceBtwSections,),


                    
                    /// - Description
                    const MySectionHeading(title: 'Description', showActionButton: false,),
                    const SizedBox(height: MySizes.spaceBtwItems,),
                    const ReadMoreText(
                      'This is a Product description for Blue Nike Sleeve less vest. There are more thing that can be added but i am just practicing and noting else.',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Less',
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),

                    /// - Reviews\
                    Divider(),
                    SizedBox(height: MySizes.spaceBtwItems,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MySectionHeading(title: 'Review(999)',onPressed: (){},showActionButton: false,),
                        IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_3, size: 18,),)
                      ],
                    ),
                    const SizedBox(height: MySizes.spaceBtwSections,),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}




