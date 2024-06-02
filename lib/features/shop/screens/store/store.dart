import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/search_contaioner.dart';
import 'package:tamago_store/common/widgets/images/my_circular_image.dart';
import 'package:tamago_store/common/widgets/layouts/grid_layout.dart';
import 'package:tamago_store/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:tamago_store/common/widgets/texts/my_brand_title_text_with_verified_icon.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/enums.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          MyCartCounterIcon(onPressed: (){},),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled){
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: MyHelperFunctions.isDarkMode(context) ? MyColors.black : MyColors.white,
              expandedHeight: 440,

              flexibleSpace: Padding(
                  padding: const EdgeInsets.all(MySizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [

                      /// -- Search bar
                      const SizedBox(height: MySizes.spaceBtwItems,),
                      const MySearchContainer(
                        text: 'Search In Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: MySizes.spaceBtwSections,),

                      /// -- Feature Brands
                      MySectionHeading(title: 'Feature Brands', onPressed: (){}),
                      const SizedBox(height: MySizes.spaceBtwItems / 1.5,),
                      
                      MyGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: (){},
                          child: MyRoundedContainer(
                            padding: const EdgeInsets.all(MySizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [

                                /// -- Icon
                                Flexible(
                                  child: MyCircularImage(
                                    isNetworkImage: false,
                                    image: MyImages.clothes,
                                    backgroundColor: Colors.transparent,
                                    overlayColor: MyHelperFunctions.isDarkMode(context) ? MyColors.white : MyColors.black,
                                  ),
                                ),
                                const SizedBox(width: MySizes.spaceBtwItems / 2,),

                                /// -- Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const MyBrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products gsfg ssfgs sfgsfg',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })
                    ],
                  ),
              ),
            ),
          ];
        },
        body: Container(

        ),
      ),
    );
  }
}


