import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/brand/brand_showcase.dart';
import 'package:tamago_store/common/widgets/layouts/grid_layout.dart';
import 'package:tamago_store/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class MyCategoryTab extends StatelessWidget {
  const MyCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [

              /// --Brands
              const MyBrandShowcase(images: [MyImages.productImg3,MyImages.productImg5,MyImages.productImg11],),
              const SizedBox(height: MySizes.spaceBtwItems,),

              /// --Products
              MySectionHeading(title: 'You might like', onPressed: (){},),
              const SizedBox(height: MySizes.spaceBtwItems,),

              MyGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const MyProductVertical()),
              const SizedBox(height: MySizes.spaceBtwItems,),
            ],
          ),
        ),
      ]
    );
  }
}
