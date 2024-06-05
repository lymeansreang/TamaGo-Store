import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/features/personalization/screens/address/add_new_address.dart';
import 'package:tamago_store/utils/constants/colors.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
      showBackArrow: true,
      title: Text('Addresses', style: Theme.of(context).textTheme.headlineMedium,),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: MyColors.primaryColor,
        child: const Icon(Iconsax.add, color: MyColors.white,),
      ),

    );
  }
}
