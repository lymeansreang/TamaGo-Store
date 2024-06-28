import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/layouts/grid_layout.dart';
import 'package:tamago_store/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class MySortableProducts extends StatelessWidget {
  const MySortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: ['Name','Heigher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity'].map((option) =>
              DropdownMenuItem(
                  value: option,
                  child: Text(option))).toList(),
          onChanged: (value){},
        ),
        const SizedBox(height: MySizes.spaceBtwSections,),

        /// Products
        MyGridLayout(
          itemCount: 8,
          itemBuilder: (_, index) => const MyProductVertical(),),
      ],
    );
  }
}
