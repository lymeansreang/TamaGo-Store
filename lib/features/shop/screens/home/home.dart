import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/search_contaioner.dart';
import 'package:tamago_store/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/constants/text_string.dart';
import 'package:tamago_store/utils/device/device_utility.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index){
                              return Column(
                                children: [
                                  Container(
                                    width: 56,
                                    height: 56,
                                    padding: const EdgeInsets.all(MySizes.sm),
                                    decoration: BoxDecoration(
                                      color: MyColors.white,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(
                                      child: Image(
                                        image: AssetImage(''),
                                        fit: BoxFit.cover,
                                        color: MyColors.dark,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                        ),
                      ),
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














