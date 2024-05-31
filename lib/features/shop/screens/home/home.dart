import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:tamago_store/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:tamago_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/text_string.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            MyPrimaryHeaderContainer(
              child:  Column(
                children: [
                  /// -- AppBar
                  MyHomeAppBar(),

                  /// -- Search bar

                  /// -- Categories

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}










