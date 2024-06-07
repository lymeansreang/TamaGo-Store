import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class MyCouponCode extends StatelessWidget {
  const MyCouponCode({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? MyColors.dark : MyColors.white,
      padding: const EdgeInsets.only(top: MySizes.sm, bottom: MySizes.sm, right: MySizes.sm,left: MySizes.md),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? MyColors.white.withOpacity(0.5) : MyColors.dark.withOpacity(0.5),
                backgroundColor: MyColors.grey.withOpacity(0.2),
                side: BorderSide(color: MyColors.grey.withOpacity(0.1),),
              ),
              child:const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}