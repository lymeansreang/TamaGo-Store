import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/brand/brand_card.dart';
import 'package:tamago_store/common/widgets/layouts/grid_layout.dart';
import 'package:tamago_store/common/widgets/product/sortable/sortable_products.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/features/shop/screens/brands/brand_products.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Brand',),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [

              /// Heading
              MySectionHeading(title: 'Brand',showActionButton: false,),
              SizedBox(height: MySizes.spaceBtwItems,),

              /// Brand
              MyGridLayout(
                  itemCount: 8,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => MyBrandCard(showBorder: true,onTap: () => Get.to(()=> BrandProducts()),) )
            ],
          ),
        ),
      ),
    );
  }
}