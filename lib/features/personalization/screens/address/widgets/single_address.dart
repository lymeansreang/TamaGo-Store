import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MySingleAddress extends StatelessWidget {
  const MySingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyRoundedContainer(
      padding: EdgeInsets.all(MySizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? MyColors.primaryColor.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : dark ? MyColors.darkerGrey : MyColors.grey,
      margin: EdgeInsets.only(bottom: MySizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? dark ? MyColors.light : MyColors.dark : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('John Deo',maxLines: 1,overflow: TextOverflow.ellipsis,style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: MySizes.sm / 2,),
              const Text('(+855) 77377590',maxLines: 1,overflow: TextOverflow.ellipsis,),
              const SizedBox(height: MySizes.sm / 2,),
              Text('St122, 88E1, Kampuchea krom, PhnomPenh, Cambodia',
                softWrap: true,
              ),
              const SizedBox(height: MySizes.sm / 2,),
            ],
          )
        ],
      ),
    );
  }
}
