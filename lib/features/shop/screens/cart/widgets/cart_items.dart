import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/product/cart/add_remove_button.dart';
import 'package:tamago_store/common/widgets/product/cart/cart_item.dart';
import 'package:tamago_store/common/widgets/texts/product_price_text.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class MyCartItems extends StatelessWidget {
  const MyCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(
        height: MySizes.spaceBtwSections,
      ),
      itemBuilder: (_, index) => Column(
        children: [
          /// Cart items
          const MyCartItem(),
          if(showAddRemoveButtons) const SizedBox(height: MySizes.spaceBtwItems,),

          /// Add Remove button row with total Price
          if(showAddRemoveButtons) const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// Extra Space
                  SizedBox(width: 70,),
                  /// Add Remove button
                  MyProductQuanityWithAddRemoveButton(),
                ],
              ),


              MyProductPriceText(price: '256'),

            ],
          )
        ],
      ),
    );
  }
}
