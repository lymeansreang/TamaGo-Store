import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/icons/my_circular_icon.dart';
import 'package:tamago_store/common/widgets/layouts/grid_layout.dart';
import 'package:tamago_store/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:tamago_store/features/shop/screens/home/home.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
          title: Text('Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            MyCircularIcon(icon: Iconsax.add,onPressed: () => Get.to(const HomeScreen()),)
          ],
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              MyGridLayout(itemCount: 4, itemBuilder: (_, index) => const MyProductVertical())
            ],
          ),
        ),
      ),
    );
  }
}
