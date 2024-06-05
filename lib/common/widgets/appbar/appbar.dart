import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/device/device_utility.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: MySizes.md),
    child: AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(onPressed:() => Get.back(), icon: Icon(Iconsax.arrow_left, color: dark ? MyColors.white : MyColors.dark,))
          : leadingIcon != null ? IconButton(onPressed:leadingOnPressed, icon: Icon(leadingIcon)) : null,
      title: title,
      actions: actions,
    ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MyDeviceUtils.getAppBarHeight());
}
