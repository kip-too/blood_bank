import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user/user_info.dart';

void saveUserData(UserModel user) async {
  try {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.id)
        .set(user.toMap());
    print('User data saved successfully');
  } catch (error) {
    print('Error saving user data: $error');
  }
}
