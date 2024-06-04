import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/images/my_circular_image.dart';
import 'package:tamago_store/common/widgets/texts/section_heading.dart';
import 'package:tamago_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text('Profile',style: Theme.of(context).textTheme.headlineMedium,),
      ),
      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(MySizes.defaultSpace),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    /// -- Profile picture
                    children: [
                      MyCircularImage(image: MyImages.user,width: 80,height: 80,),
                      TextButton(
                          onPressed: (){},
                          child: Text('Change Profile Picture')),
                    ],
                  ),
                ),

                /// -- Details
                SizedBox(height: MySizes.spaceBtwItems / 2,),
                Divider(),
                SizedBox(height: MySizes.spaceBtwItems,),

                MySectionHeading(title: 'Profile Information' , showActionButton: false,),
                SizedBox(height: MySizes.spaceBtwItems,),

                MyProfileMenu(title: 'Name:',value: 'Ly Meansreang',onPressed: (){},),
                MyProfileMenu(title: 'Username:',value: 'Sreang',onPressed: (){},),

                SizedBox(height: MySizes.spaceBtwItems / 2,),
                Divider(),
                SizedBox(height: MySizes.spaceBtwItems,),

                MySectionHeading(title: 'Personal Information' , showActionButton: false,),
                SizedBox(height: MySizes.spaceBtwItems,),

                MyProfileMenu(title: 'User-ID:',value: '377590',icon: Iconsax.copy,onPressed: (){},),
                MyProfileMenu(title: 'E-mail:',value: 'lmsreang3@gmail.com',onPressed: (){},),
                MyProfileMenu(title: 'PhoneNumber:',value: '+855-77377590',onPressed: (){},),
                MyProfileMenu(title: 'Gender:',value: 'Male',onPressed: (){},),
                MyProfileMenu(title: 'Date Of Birth:',value: '08 Dec, 2003',onPressed: (){},),
                Divider(),
                SizedBox(height: MySizes.spaceBtwItems,),

                Center(
                  child: TextButton(
                    onPressed: (){},
                    child: Text('Close Account',style: TextStyle(color: Colors.red),),
                  ),
                )
              ],
            ),

        ),
      ),
    );
  }
}


