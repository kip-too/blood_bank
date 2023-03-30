import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String firstName;
  final String lastName;
  final String idNumber;
  final String mobileNumber;
  final String email;
  final String gender;
  final String dateOfBirth;
  final String location;
  final String bloodGroup;
  final bool donor;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.idNumber,
    required this.mobileNumber,
    required this.email,
    required this.gender,
    required this.dateOfBirth,
    required this.location,
    required this.bloodGroup,
    required this.donor,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'idNumber': idNumber,
      'mobileNumber': mobileNumber,
      'email': email,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'location': location,
      'bloodGroup': bloodGroup,
      'donor': donor,
    };
  }

  static UserModel fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return UserModel(
      id: snapshot.id,
      firstName: data['firstName'],
      lastName: data['lastName'],
      idNumber: data['idNumber'],
      mobileNumber: data['mobileNumber'],
      email: data['email'],
      gender: data['gender'],
      dateOfBirth: data['dateOfBirth'],
      location: data['location'],
      bloodGroup: data['bloodGroup'],
      donor: data['donor'],
    );
  }
}
