import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/layouts/grid_layout.dart';
import 'package:tamago_store/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: Text('All Products'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                /// Dropdown
                DropdownButtonFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                    items: ['Name','Heigher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity'].map((option) =>
                        DropdownMenuItem(
                            value: option,
                            child: Text(option))).toList(),
                            onChanged: (value){},
                ),
                SizedBox(height: MySizes.spaceBtwSections,),

                /// Products
                MyGridLayout(
                    itemCount: 8,
                    itemBuilder: (_, index) => MyProductVertical(),),
              ],
            ),
        ),
      ),
    );
  }
}
