import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/search_contaioner.dart';
import 'package:tamago_store/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:tamago_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            MyPrimaryHeaderContainer(
              child:  Column(
                children: [
                  /// -- AppBar
                  MyHomeAppBar(),
                  SizedBox(height: MySizes.spaceBtwSections,),

                  /// -- Search bar
                  MySearchContainer(text: 'Search in Store',),
                  SizedBox(height: MySizes.spaceBtwSections,),

                  /// -- Categories
                  Padding(
                      padding: EdgeInsets.only(left: MySizes.defaultSpace),
                  child: Column(
                    children: [

                      /// --Heading
                      MySectionHeading(title: 'Popular Categories',showActionButton: false,),
                      SizedBox(height: MySizes.spaceBtwItems,),

                      /// -- Categories
                      MyHomeCategories(),
                    ],
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


















