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

  Future<UserModel> getUserFromDatabase(String uid) async {
    try {
      DocumentSnapshot doc =
          await _firestore.collection('users').doc(uid).get();
      final user = UserModel.fromMap(doc.data());
      Get.find<UserController>().setUser(user);
      print('user: $user');
      return user;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<bool> addAnimeToWatchList(UserModel user, int animeId) async {
    try {
      await _firestore.collection('users').doc(user.uid).update({
        'watchList': FieldValue.arrayUnion([animeId])
      });
      Get.snackbar('Well Done!', 'Anime added successfully');
      return true;
    } catch (e) {
      Get.snackbar('Error writing to database', e);
      return false;
    }
  }

  // getWatchlistFromDatabase(UserModel user, int animeId) async {
  //   try {
  //     final DocumentSnapshot snapshot =
  //         await _firestore.collection('users').doc(user.uid).get();
  //     return snapshot.get('watchList');
  //   } catch (e) {
  //     Get.snackbar('Error writing to database', e);
  //   }
  // }

  // Stream<DocumentSnapshot> streamAnimeWatchList(UserModel user) {
  //   return _firestore.collection('users').doc(user.uid).snapshots();
  // }

  Future<bool> addAnimeToFinishedList(UserModel user, int animeId) async {
    try {
      await _firestore.collection('users').doc(user.uid).update({
        'finishedWatching': FieldValue.arrayUnion([animeId])
      });
      Get.snackbar('Well Done!', 'Anime added successfully');
      return true;
    } catch (e) {
      Get.snackbar('Error writing to database', e);
      return false;
    }
  }

  deleteAnimeFromDatabase(UserModel user, int animeId) async {
    try {
      await _firestore.collection('users').doc(user.uid).update({
        'watchList': FieldValue.arrayRemove([animeId])
      });
      return true;
    } catch (e) {
      Get.snackbar('Error writing to database', e);
      return false;
    }
  }

  // Future<UserModel> getWatchListAnimeFromDatabase(String uid) async {
  //   try {
  //     var doc = await _firestore.collection('users').doc(uid).get();
  //     final user = UserModel.fromMap(doc.data());
  //     Get.find<UserController>().setUser(user);
  //     return user;
  //   } catch (e) {
  //     print(e);
  //     rethrow;
  //   }
  // }
}
