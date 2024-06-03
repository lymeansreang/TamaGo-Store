import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/texts/my_brand_title_text.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/enums.dart';

class MyBrandTitleWithVerifiedIcon extends StatelessWidget {
  const MyBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = MyColors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: MyBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        // const SizedBox(width: MySizes.xs,),
        // Icon(Iconsax.verify5,
        //   color: iconColor,
        //   size: MySizes.iconXs,
        // ),
      ],
    );
  }
}