import '../../models/user/user_info.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseUserInfoRepository {
  Future<UserInfo> getUserInfo();
  Future<void> saveUserInfo(UserInfo userInfo);
}
