import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/circular_container.dart';
import 'package:tamago_store/common/widgets/images/my_rounded_image.dart';
import 'package:tamago_store/features/shop/controllers/home_controller.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class MyProSlider extends StatelessWidget {
  const MyProSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
            items: banners.map((url) => MyRoundedImage(imageUrl: url)).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) => controller.updatePageIndicator(index),
            )),
        const SizedBox(height: MySizes.spaceBtwItems,),
        Center(
          child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for( int i=0; i<banners.length; i++)
                  MyCircularContainer(
                    width: 20,
                    height: 4,
                    margin:const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i ? MyColors.primaryColor : MyColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}