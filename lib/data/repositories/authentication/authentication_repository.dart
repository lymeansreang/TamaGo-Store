import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tamago_store/features/authentication/screens/login/login.dart';
import 'package:tamago_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:tamago_store/features/authentication/screens/signup/verify_email.dart';
import 'package:tamago_store/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:tamago_store/utils/exceptions/firebase_exceptions.dart';
import 'package:tamago_store/utils/exceptions/format_exceptions.dart';
import 'package:tamago_store/utils/exceptions/platform_exception.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// Called form main.dart on app launch
  ///
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to show relevant screen
  void screenRedirect() async {
    final user = _auth.currentUser;
    if(user != null){
      // if the user is logged in
      if(user.emailVerified){
        // If the user's email is verified, navigate to the main Navigation Menu
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }else{
        // if the user's email is not verified, navigate to the VerifyEmailScreen
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email,));
      }
    }else{
      // Local Storage
      deviceStorage.writeIfNull('IsFirstTime', true);

      // Check if it's the first time lunching the app
      deviceStorage.read('IsFirstTime') != true
          ? Get.offAll(() => const LoginScreen()) // Redirect to Login Screen if not the first time
          : Get.offAll(const OnBoardingScreen()); // Redirect to OnBoarding Screen if it's the first time
    }


  }

  /* ------------------------- Email & Password sign-in -------------------------- */

  /// [EmailAuthentication] - SignIn
  Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
    try{
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (e){
      throw MyFirebaseAuthException(e.code).message;
    }on FirebaseException catch (e){
      throw MyFirebaseException(e.code).message;
    }on FormatException catch (_){
      throw const MyFormatException();
    }on PlatformException catch (e){
      throw MyPlatformException(e.code).message;
    }
    catch(e){
      throw 'Something went wrong. Please try again';
    }
  }

  /// [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(String email, String password) async{
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (e){
      throw MyFirebaseAuthException(e.code).message;
    }on FirebaseException catch (e){
      throw MyFirebaseException(e.code).message;
    }on FormatException catch (_){
      throw const MyFormatException();
    }on PlatformException catch (e){
      throw MyPlatformException(e.code).message;
    }
    catch(e){
      throw 'Something went wrong. Please try again';
    }
  }

  /// [ReAuthentication] - ReAuthentication User

  /// [EmailVerification] - Mail Verification

  /// [EmailAuthentication] - Forget Password

  /* ------------------------- Federated identify & sign-in -------------------------- */

  /// [GoogleAuthentication] - Google

  /// [FacebookAuthentication] - Facebook

  /* ------------------------- ./end Federated identify & social sign-in -------------------------- */

  /// [LogoutUser] - Valid for any authentication

  /// Delete user - Remove user Auth and Firebase Account

}