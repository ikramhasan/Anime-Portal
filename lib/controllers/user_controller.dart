import 'package:anime_portal/models/user_model.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  Rx<UserModel> _userModel = UserModel().obs;

  UserModel get user => _userModel.value;

  set user(UserModel user) => this._userModel.value = user;

  clear() {
    _userModel.value = UserModel();
  }
}
