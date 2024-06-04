import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/images/my_circular_image.dart';
import 'package:tamago_store/features/personalization/screens/profile/profile.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';

class MyUserProfileTile extends StatelessWidget {
  const MyUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const MyCircularImage(
        image: MyImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Ly Meansreang',
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: MyColors.white),),
      subtitle: Text('lmsreang3@gmail.com',
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: MyColors.white),),
      trailing: IconButton(
        onPressed: () => Get.to(() => const ProfileScreen()),icon: const Icon(Iconsax.edit, color: MyColors.white,),
      ),
    );
  }
}