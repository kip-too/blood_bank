import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseRepository {
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  // Create user
  Future<void> addUser({
    required String firstName,
    required String lastName,
    required String idNumber,
    required String mobileNumber,
    required String email,
    required String gender,
    required DateTime dateOfBirth,
    required String location,
    required String bloodGroup,
  }) async {
    await _usersCollection.add({
      'firstName': firstName,
      'lastName': lastName,
      'idNumber': idNumber,
      'mobileNumber': mobileNumber,
      'email': email,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'location': location,
      'bloodGroup': bloodGroup,
    });
  }

  // Read user
  Stream<QuerySnapshot> getUsers() {
    return _usersCollection.snapshots();
  }

  // Update user
  Future<void> updateUser({
    required String documentId,
    required String firstName,
    required String lastName,
    required String idNumber,
    required String mobileNumber,
    required String email,
    required String gender,
    required DateTime dateOfBirth,
    required String location,
    required String bloodGroup,
  }) async {
    await _usersCollection.doc(documentId).update({
      'firstName': firstName,
      'lastName': lastName,
      'idNumber': idNumber,
      'mobileNumber': mobileNumber,
      'email': email,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'location': location,
      'bloodGroup': bloodGroup,
    });
  }

  // Delete user
  Future<void> deleteUser(String documentId) async {
    await _usersCollection.doc(documentId).delete();
  }
}
