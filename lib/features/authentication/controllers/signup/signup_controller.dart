import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/common/widgets/network/network_manager.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/popups/full_screen_loader.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();
  SignupController();

  // Variable
final email = TextEditingController();
final firstname = TextEditingController();
final lastname = TextEditingController();
final username = TextEditingController();
final password = TextEditingController();
final phoneNum = TextEditingController();
GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  // Signup

  Future<void> signup() async{
    try{
      // Start Loading
      MyFullScreenLoader.openLoadingDialog('We are processing your information...', MyImages.successImage1);
      // Check Internet Connectivity
      // final isConnected = await NetworkManager.instance.isConnected();
      // Form Validation

      // Privacy Policy Check

      // Register user in Firebase Authentication & Save User data in Firebase

      // Save Authentication User Data

      // Show Success message

    }catch (e){

    }finally{

    }
  }
}