import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/images/my_rounded_image.dart';
import 'package:tamago_store/common/widgets/product/product_cards/product_card_horizontal.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Sports'),showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const MyRoundedImage(
                  imageUrl: MyImages.promoBanner1,
                  width: double.infinity,
                  applyImageRadius: true,
              ),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// Sub-categories
              Column(
                children: [
                  /// Heading
                  MySectionHeading(title: 'Sport Shirts',onPressed: (){},),
                  const SizedBox(height: MySizes.spaceBtwItems / 2,),

                  SizedBox(
                    height:120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(width: MySizes.spaceBtwItems,),
                        itemBuilder: (context, index) => const MyProductHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
