import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/appbar/tabbar.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/search_contaioner.dart';
import 'package:tamago_store/common/widgets/layouts/grid_layout.dart';
import 'package:tamago_store/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:tamago_store/common/widgets/brand/brand_card.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/features/shop/screens/brands/all_brands.dart';
import 'package:tamago_store/features/shop/screens/store/widget/category_tab.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                        MySectionHeading(title: 'Feature Brands', onPressed: () => Get.to(() => const AllBrandsScreen())),
                        const SizedBox(height: MySizes.spaceBtwItems / 1.5,),

                        /// -- Brands GRID
                        MyGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                          return const MyBrandCard(showBorder: true,);
                        })
                      ],
                    ),
                ),
      
                /// Tab -- Tutorial
                bottom: const MyTabBar(
                    tabs: [
                      Tab(child: Text('Sport'),),
                      Tab(child: Text('Furniture'),),
                      Tab(child: Text('Electronics'),),
                      Tab(child: Text('Clothes'),),
                      Tab(child: Text('Cosmetics'),),
                ])
              ),
            ];
          },
      
          /// -- Body -- Tutorial
          body: const TabBarView(
            children: [
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}






