import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:tamago_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:tamago_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:tamago_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:tamago_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/constants/text_string.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal page scrollable
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MyImages.onBoardingImage2,
                title: MyText.onBoardingTitle1,
                subTitle: MyText.onBoardingSubTitle1,),
              OnBoardingPage(
                image: MyImages.onBoardingImage1,
                title: MyText.onBoardingTitle2,
                subTitle: MyText.onBoardingSubTitle2,),
              OnBoardingPage(
                image: MyImages.onBoardingImage3,
                title: MyText.onBoardingTitle3,
                subTitle: MyText.onBoardingSubTitle3,),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          
          // Circular Button
          const OnBoardingNextButton(),
          
        ],
      ),
    );
  }
}








