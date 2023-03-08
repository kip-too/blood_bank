import '../../models/user/user_info.dart';

import 'package:blood_bank/models/user/user_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserInfoRepository {
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> saveUserInfo(UserInfo userInfo) async {
    try {
      await _usersCollection.doc().set(userInfo.toMap());
    } catch (e) {
      throw Exception('Failed to save user info: $e');
    }
  }
}
