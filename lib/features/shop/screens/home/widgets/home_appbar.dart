import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/text_string.dart';

class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        children: [
          Text(MyText.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: MyColors.grey)),
          Text(MyText.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: MyColors.white)),
        ],
      ),
      actions: [
        MyCartCounterIcon(onPressed: () {},iconColor: MyColors.white,)
      ],
    );
  }
}