import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamago_store/common/widgets/network/network_manager.dart';
import 'package:tamago_store/data/repositories/authentication/authentication_repository.dart';
import 'package:tamago_store/data/repositories/user/user_repository.dart';
import 'package:tamago_store/features/authentication/screens/signup/verify_email.dart';
import 'package:tamago_store/features/personalization/models/user_model.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/popups/full_screen_loader.dart';
import 'package:tamago_store/utils/popups/loaders.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  // Variable
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNum = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  // Signup

  void signup() async{
    try{
      // Start Loading
      MyFullScreenLoader.openLoadingDialog('We are processing your information...', MyImages.docer);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        MyFullScreenLoader.stopLoading();
        return;
      }


      // Form Validation
      if(!signupFormKey.currentState!.validate()) {
        MyFullScreenLoader.stopLoading();
        return;
      }


      // Privacy Policy Check
      if(!privacyPolicy.value){
        MyLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message: 'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use',
        );
        return;
      }

      // Register user in Firebase Authentication & Save User data in Firebase
      final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Save Authentication User Data
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstname.text.trim(),
        lastName: lastname.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNum: phoneNum.text.trim(),
        profilePicture: '',
      );
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      MyFullScreenLoader.stopLoading();

      // Show Success message
      MyLoaders.successSnackBar(title: 'Congratulations', message: 'Your account has been created! Verify email to continue.');

      // Move to Verify Email Screen
      Get.to(() => const VerifyEmailScreen());

    }catch (e){
      // Remove Loader
      MyFullScreenLoader.stopLoading();

      // Show some Generic Error to user
      MyLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }


  }
}