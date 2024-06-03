import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:tamago_store/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:tamago_store/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class SettingScreen  extends StatelessWidget {
  const SettingScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// -- Header
            MyPrimaryHeaderContainer(
                child: Column(
                  children: [
                    MyAppBar(
                      title: Text('Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color: MyColors.white),),
                    ),

                    /// User Profile Card
                    const MyUserProfileTile(),
                    const SizedBox(height: MySizes.spaceBtwSections,),
                  ],
                )),
            /// -- Body
            Padding(
                padding: const EdgeInsets.all(MySizes.defaultSpace),
                child: Column(
                  children: [

                    /// -- Account Setting
                    const MySectionHeading(title: 'Account Setting',showActionButton: false,),
                    const SizedBox(height: MySizes.spaceBtwItems,),
                    
                    MySettingMenuTile(icon: Iconsax.safe_home, title: 'My Address', subTitle: 'Set shopping delivery address', onTap: (){},),
                    MySettingMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout', onTap: (){},),
                    MySettingMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Completed Orders', onTap: (){},),
                    MySettingMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account', onTap: (){},),
                    MySettingMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons', onTap: (){},),
                    MySettingMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message', onTap: (){},),
                    MySettingMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts', onTap: (){},),

                    /// -- App Setting
                    const SizedBox(height: MySizes.spaceBtwSections,),
                    const MySectionHeading(title: 'App Setting',showActionButton: false,),
                    const SizedBox(height: MySizes.spaceBtwItems,),
                    const MySettingMenuTile(icon: Iconsax.document_upload, title: 'Load data', subTitle: 'Upload Data to your Cloud Firebase'),
                    MySettingMenuTile(
                        icon: Iconsax.location,
                        title: 'Geolocation',
                        subTitle: 'Set recommendation based on location',
                        trailing: Switch(value: true, onChanged: (value){},),
                    ),
                    MySettingMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      subTitle: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value){},),
                    ),
                    MySettingMenuTile(
                      icon: Iconsax.image,
                      title: 'HD Image Quality',
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value){},),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}


