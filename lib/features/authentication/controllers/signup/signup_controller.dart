import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

    }catch (e){

    }finally{

    }
  }
}