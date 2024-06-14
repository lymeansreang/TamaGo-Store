

// Repository class for user-related operations
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tamago_store/features/personalization/models/user_model.dart';
import 'package:tamago_store/utils/exceptions/firebase_exceptions.dart';
import 'package:tamago_store/utils/exceptions/format_exceptions.dart';
import 'package:tamago_store/utils/exceptions/platform_exception.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Function to save user data to Firestore.
  Future<void> saveUserRecord(UserModel user) async{
    try{
      await _db.collection('Users').doc(user.id).set(user.toJson());
    }on FirebaseException catch (e){
      throw MyFirebaseException(e.code).message;
    }on FormatException catch (_){
      throw const MyFormatException();
    }on PlatformException catch (e){
      throw MyPlatformException(e.code).message;
    }catch (e){
      throw 'Something went wrong. Please try again';
    }
  }
}