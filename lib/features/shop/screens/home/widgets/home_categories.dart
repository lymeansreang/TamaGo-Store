import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:tamago_store/features/shop/screens/sub_category/sub_categories.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';

class MyHomeCategories extends StatelessWidget {
  const MyHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return MyVerticalImageText(
            image: MyImages.sport,
            title: 'Sport',onTap: () => Get.to(() => const SubCategoriesScreen()),);
        },
      ),
    );
  }
}