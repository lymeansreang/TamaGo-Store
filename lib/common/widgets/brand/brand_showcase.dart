import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/brand/brand_card.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MyBrandShowcase extends StatelessWidget {
  const MyBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MyRoundedContainer(
      showBorder: true,
      borderColor: MyColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(MySizes.md),
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with product count
          const MyBrandCard(showBorder: false),
          const SizedBox(height: MySizes.spaceBtwItems,),

          /// Brand Top 3 product images
          Row(
            children: images.map((image) => brandTopProductImageWidget(
                image, context)).toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget (String image, context) {
  return Expanded(
    child: MyRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(MySizes.md),
      margin: const EdgeInsets.only(right: MySizes.sm),
      backgroundColor: MyHelperFunctions.isDarkMode(context) ? MyColors.darkerGrey : MyColors.white,
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(image),
      ),
    ),
  );
}