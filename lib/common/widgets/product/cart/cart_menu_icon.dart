import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/features/shop/screens/cart/cart.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MyCartCounterIcon extends StatelessWidget {
  const MyCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
  });

  final Color? iconColor,counterBgColor,counterTextColor;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: ()=> Get.to(() => const CartScreen()),
            icon: Icon(Iconsax.shopping_bag, color: iconColor,)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: counterBgColor ?? (dark ? MyColors.white : MyColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: MyColors.white,
                    fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}