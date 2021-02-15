import 'package:anime_portal/controllers/user_controller.dart';
import 'package:anime_portal/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class Database {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> createNewUserInDatabase(UserModel user) async {
    try {
      await _firestore.collection('users').doc(user.uid).set({
        'uid': user.uid,
        'name': user.name,
        'email': user.email,
      });

      return true;
    } catch (e) {
      Get.snackbar('Error writing to database', e);
      return false;
    }
  }

  Future<bool> addAnimeToWatchList(UserModel user, int animeId) async {
    try {
      await _firestore.collection('users').doc(user.uid).update({
        'watchList': FieldValue.arrayUnion([animeId])
      });
      Get.snackbar('Well Done!', 'Anime successfully added to watchlist');
      return true;
    } catch (e) {
      Get.snackbar('Error writing to database', e);
      return false;
    }
  }

  Future<UserModel> getUserFromDatabase(String uid) async {
    try {
      DocumentSnapshot doc =
          await _firestore.collection('users').doc(uid).get();
      final user = UserModel.fromMap(doc.data());
      Get.find<UserController>().setUser(user);
      return user;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
