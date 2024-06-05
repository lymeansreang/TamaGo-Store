import 'package:flutter/material.dart';
import 'package:tamago_store/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';

class MyOverallProductRating extends StatelessWidget {
  const MyOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Text('4.8',style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              MyRatingProgressIndicator(text: '5', value: 1.0,),
              MyRatingProgressIndicator(text: '4', value: 0.8,),
              MyRatingProgressIndicator(text: '3', value: 0.6,),
              MyRatingProgressIndicator(text: '2', value: 0.4,),
              MyRatingProgressIndicator(text: '1', value: 0.1,),
            ],
          ),
        )
      ],
    );
  }
}