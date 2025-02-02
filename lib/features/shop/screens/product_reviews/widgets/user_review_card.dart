import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:tamago_store/common/widgets/custom_shape/container/rounded_container.dart';
import 'package:tamago_store/common/widgets/product/ratings/rating_indicator.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/sizes.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(MyImages.userProfileImg1),),
                const SizedBox(width: MySizes.spaceBtwItems,),
                Text('John Deo' , style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems,),

        /// -- Reviews
        Row(
          children: [
            const MyRatingIndicator(rating: 4),
            const SizedBox(width: MySizes.spaceBtwItems,),
            Text('01 Nov, 2024', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems,),
        const ReadMoreText('The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: MyColors.primaryColor),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: MyColors.primaryColor),
        ),
        const SizedBox(height: MySizes.spaceBtwItems,),

        /// -- Company Reviews
        MyRoundedContainer(
          backgroundColor: dark ? MyColors.darkerGrey : MyColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(MySizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("TamaGo's Store",style: Theme.of(context).textTheme.titleMedium,),
                    Text("02 nov, 2024",style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),

                const SizedBox(height: MySizes.spaceBtwItems,),
                const ReadMoreText('The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: MyColors.primaryColor),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: MyColors.primaryColor),
                ),
                const SizedBox(height: MySizes.spaceBtwItems,),
              ],
            ),
          ),
        ),const SizedBox(height: MySizes.spaceBtwItems,),
      ],
    );
  }
}
