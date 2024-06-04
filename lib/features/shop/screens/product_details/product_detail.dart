import 'package:flutter/material.dart';
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
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// 1 - Product Image Slider
            MyProductImageSlider(),

            /// 2 - Product Details
            Padding(
                padding: EdgeInsets.only(right: MySizes.defaultSpace, left: MySizes.defaultSpace, bottom: MySizes.defaultSpace),
                child: Column(
                  children: [

                    /// - Rating & Share Button
                    MyRatingAndShare(),

                    /// - Price, Title, Stock, & Brand
                    MyProductMetaData(),

                    /// -- Attributes
                    /// -- Checkout Button
                    /// - Description
                    /// - Reviews
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}




