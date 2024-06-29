import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tamago_store/common/widgets/network/network_manager.dart';
import 'package:tamago_store/data/repositories/authentication/authentication_repository.dart';
import 'package:tamago_store/features/shop/screens/home/home.dart';
import 'package:tamago_store/utils/constants/image_strings.dart';
import 'package:tamago_store/utils/popups/full_screen_loader.dart';
import 'package:tamago_store/utils/popups/loaders.dart';

class LoginController extends GetxController{

  // Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  // --Email and password sign in
  Future<void> emailAndPasswordSignIn() async {
    try{
      // Start loading
      MyFullScreenLoader.openLoadingDialog("Logging you in...", MyImages.docer);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        MyFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if(!loginFormKey.currentState!.validate()) {
        MyFullScreenLoader.stopLoading();
        return;
      }

      // Save data if remember me is selected
      if(rememberMe.value){
        localStorage.write("REMEMBER_ME_EMAIL", email.text.trim());
        localStorage.write("REMEMBER_ME_PASSWORD", password.text.trim());
      }

      // Login user in Firebase Authentication & Save User data in Firebase
      final userCredential = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      // Remove Loader
      MyFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
      // Get.to(() => const HomeScreen());
    }catch (e){
      MyFullScreenLoader.stopLoading();
      MyLoaders.errorSnackBar(title: "Oh Sh*t", message: e.toString());
    }
  }
}