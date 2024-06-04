import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class MyRatingAndShare extends StatelessWidget {
  const MyRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        ///Rating
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24,),
            const SizedBox(width: MySizes.spaceBtwItems / 2,),
            Text.rich(
              TextSpan(
                  children: [
                    TextSpan(text: '5.0 ', style: Theme.of(context).textTheme.bodyLarge),
                    const TextSpan(text: '(199)'),
                  ]
              ),
            ),
          ],
        ),

        ///Share
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.share, size: MySizes.iconMd,))
      ],
    );
  }
}