import 'package:flutter/material.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/device/device_utility.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget{
  /// If you want to add the background color to tabs you have to wrap them in Material widget.
  /// To do that we need [PreferredSize] widget and that's why created custom class. [PreferredSizeWidget]
  const MyTabBar ({
    super.key,
    required this.tabs
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? MyColors.black : MyColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        tabAlignment: TabAlignment.center,
        indicatorColor: MyColors.primaryColor,
        labelColor: dark ? MyColors.white : MyColors.primaryColor,
        unselectedLabelColor: MyColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MyDeviceUtils.getAppBarHeight());
}
