// import 'package:blood_bank/models/user/user_info.dart';
// import 'package:blood_bank/repositories/userrepsitory/user_repository.dart';
// import 'package:blood_bank/services/user_info_service.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class FirebaseUserInfoRepositoryImpl implements FirebaseRepository {
//   final FirebaseUserInfoService firebaseUserInfoService;
//   final FirebaseFirestore firestore;

//   FirebaseUserInfoRepositoryImpl({
//     required this.firebaseUserInfoService,
//     required this.firestore,
//   });

//   @override
//   Future<void> saveUserInfo(UserInfo userInfo) async {
//     final documentReference =
//         FirebaseFirestore.instance.collection('userinfo').doc();
//     await documentReference.set(userInfo.toMap());
//   }

//   @override
//   Future<UserInfo> getUserInfo() async {
//     final userDoc = await firestore.collection('userinfo').doc('user_id').get();
//     if (!userDoc.exists) {
//       throw Exception('User Document does not exist');
//     }
//     return UserInfo(
//       firstName: userDoc['firstName'],
//       lastName: userDoc['lastName'],
//       idNumber: userDoc['idNumber'],
//       mobileNumber: userDoc['mobileNumber'],
//       email: userDoc['email'],
//       gender: userDoc['gender'],
//       dateOfBirth: userDoc['dateOfBirth'],
//       location: userDoc['location'],
//       bloodGroup: userDoc['bloodGroup'],
//     );
//   }
// }
