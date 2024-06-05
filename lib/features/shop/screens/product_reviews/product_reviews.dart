import 'package:flutter/material.dart';
import 'package:tamago_store/common/widgets/appbar/appbar.dart';
import 'package:tamago_store/common/widgets/product/ratings/rating_indicator.dart';
import 'package:tamago_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:tamago_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:tamago_store/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: Text('Reviews & Ratings',style: Theme.of(context).textTheme.headlineMedium,),showBackArrow: true,),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: MySizes.spaceBtwItems,),

              /// Overall Product Rating
              const MyOverallProductRating(),
              const MyRatingIndicator(rating: 3.5,),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: MySizes.spaceBtwSections,),

              /// -- User review lists
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}




