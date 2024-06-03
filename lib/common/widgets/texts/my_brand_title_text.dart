import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/enums.dart';
import 'package:tamago_store/utils/constants/sizes.dart';


class MyBrandTitleText extends StatelessWidget {
  const MyBrandTitleText({
    super.key,
    this.color,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          textAlign: textAlign,
          overflow: TextOverflow.ellipsis,
          maxLines: maxLines,

          // Check which brandSize is required and set that style
          style: brandTextSize == TextSizes.small
                ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
                : brandTextSize == TextSizes.medium
                  ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                  : brandTextSize == TextSizes.large
                    ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                    : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
        ),
        const SizedBox(width: MySizes.xs,),
        const Icon(Iconsax.verify5,
          color: MyColors.primaryColor,
          size: MySizes.iconXs,
        ),
      ],
    );
  }
}