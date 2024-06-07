import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/icons/my_circular_icon.dart';
import 'package:tamago_store/common/widgets/images/my_rounded_image.dart';
import 'package:tamago_store/common/widgets/product/cart/add_remove_button.dart';
import 'package:tamago_store/common/widgets/product/cart/cart_item.dart';
import 'package:tamago_store/common/widgets/texts/my_brand_title_text_with_verified_icon.dart';
import 'package:tamago_store/common/widgets/texts/product_price_text.dart';
import 'package:tamago_store/common/widgets/texts/product_title_text.dart';
import 'package:tamago_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:tamago_store/features/shop/screens/checkout/checkout.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: MyCartItems(),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}




