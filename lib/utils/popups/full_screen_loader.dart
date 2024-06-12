import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/common/widgets/loaders/animation_loader.dart';
import 'package:tamago_store/utils/constants/colors.dart';
import 'package:tamago_store/utils/helpers/helper_functions.dart';

/// A utility class for managing a full-screen loading dialog.
class MyFullScreenLoader {
  /// Open a full-screen loading dialog with a given text and animation
  /// this method doesn't return anything
  ///
  /// Parameter
  ///   - text : The text to be display in the loading dialog
  ///   - animation : The lottie animation to be shown
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!, // Use Get.overlayContext for overlay dialog
        barrierDismissible: false,  // The Dialog can't be dismissed by tapping outside
        builder: (_) => PopScope(
            child: Container(
              color: MyHelperFunctions.isDarkMode(Get.context!) ? MyColors.dark : MyColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 250,),
                  MyAnimationLoaderWidget(text: text, animation: animation,),
                ],
              ),
            )
        ),
    );
  }

  /// Stop the currently open loading dialog
  /// This method doesn't return anything
  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}