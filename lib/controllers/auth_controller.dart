import 'package:anime_portal/controllers/user_controller.dart';
import 'package:anime_portal/models/user_model.dart';
import 'package:anime_portal/services/database.dart';
import 'package:anime_portal/views/home_page/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User> _firebaseUser = Rx<User>();
  Database _database = Database();

  String get user => _firebaseUser.value?.email;

  // Firebase user one-time fetch
  Future<User> get getUser async => _auth.currentUser;

  @override
  void onInit() async {
    //run every time auth state changes
    _firebaseUser.value = await getUser;
    _firebaseUser.bindStream(_auth.authStateChanges());
    super.onInit();
  }

  createUser({
    @required String name,
    @required String email,
    @required String password,
  }) async {
    try {
      // Create user in firebase auth
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: email.trim(), password: password.trim());

      // Create user in firestore database
      UserModel user = UserModel(
        uid: userCredential.user.uid,
        name: name,
        email: email.trim(),
      );

      if (await _database.createNewUserInDatabase(user)) {
        // User created succesfully
        print('reached');
        Get.find<UserController>().setUser(user);
        print('also reached');
        Get.back();
      }
    } catch (e) {
      Get.snackbar(
        'Error creating account!',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  login({@required String email, @required String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      Get.find<UserController>().setUser(
        await _database.getUserFromDatabase(userCredential.user.uid),
      );
      // Get.find<UserController>().user =
      //     await _database.getUserFromDatabase(userCredential.user.uid);
      Get.offAll(HomePage());
    } catch (e) {
      Get.snackbar(
        'Error login in!',
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  signout() async {
    try {
      await _auth.signOut();
      Get.find<UserController>().clear();
      Get.back();
    } catch (e) {
      Get.snackbar(
        'Error signing out!',
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
