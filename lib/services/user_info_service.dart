import 'package:blood_bank/models/user/user_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseUserInfoService {
  final FirebaseFirestore firestore;

  FirebaseUserInfoService({
    required this.firestore,
  });

  Future<void> saveUserInfo(UserInfo userInfo) async {
    final userDoc = firestore.collection('userinfo').doc();
    await userDoc.set(userInfo.toMap());
  }
}
