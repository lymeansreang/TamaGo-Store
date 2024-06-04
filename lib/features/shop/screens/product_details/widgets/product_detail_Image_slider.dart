import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/custom_shape/curved_edges/curved_edge_widget.dart';
import 'package:tamago_store/common/widgets/icons/my_circular_icon.dart';
import 'package:tamago_store/common/widgets/images/my_rounded_image.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MyProductImageSlider extends StatelessWidget {
  const MyProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyCurvedEdgeWidget(
      child: Container(
        color: dark ? MyColors.darkerGrey : MyColors.light,
        child: Stack(
          children: [

            /// Main Large Image
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(MySizes.productImageRadius * 2),
                  child: Center(child: Image(image: AssetImage(MyImages.productImg10))),
                )),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: MySizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(width: MySizes.spaceBtwItems,) ,
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => MyRoundedImage(
                    width: 80,
                    backgroundColor: dark ? MyColors.dark : MyColors.white,
                    imageUrl: MyImages.productImg1,
                    padding: const EdgeInsets.all(MySizes.sm),
                    border: Border.all(color: MyColors.primaryColor),
                  ),
                ),
              ),
            ),

            /// Appbar Icons
            const MyAppBar(
              showBackArrow: true,
              actions: [
                MyCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ],)
          ],
        ),
      ),
    );
  }
}