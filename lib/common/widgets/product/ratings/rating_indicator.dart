import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tamago_store/utils/constants/colors.dart';


class MyRatingIndicator extends StatelessWidget {
  const MyRatingIndicator({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: MyColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1, color: MyColors.primaryColor,),
    );
  }
}