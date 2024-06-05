import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(showBackArrow: true,title: Text('Add new Address'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),
                ),
                const SizedBox(height: MySizes.spaceBtwInputFields,),
                TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number'),
                ),
                const SizedBox(height: MySizes.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Street'),),
                    ),
                    const SizedBox(width: MySizes.spaceBtwInputFields,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Postal Code'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: MySizes.spaceBtwInputFields,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'City'),),
                    ),
                    const SizedBox(width: MySizes.spaceBtwInputFields,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'State'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: MySizes.spaceBtwInputFields,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),),
                const SizedBox(height: MySizes.defaultSpace,),
                SizedBox(width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
