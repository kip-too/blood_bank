import 'package:equatable/equatable.dart';

class UserInfo extends Equatable {
  final String firstName;
  final String lastName;
  final String idNumber;
  final String mobileNumber;
  final String email;
  final String gender;
  final String dateOfBirth;
  final String location;
  final String bloodGroup;

  const UserInfo({
    required this.firstName,
    required this.lastName,
    required this.idNumber,
    required this.mobileNumber,
    required this.email,
    required this.gender,
    required this.dateOfBirth,
    required this.location,
    required this.bloodGroup,
  });

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'idNumber': idNumber,
      'phoneNumber': mobileNumber,
      'email': email,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'location': location,
      'bloodGroup': bloodGroup,
    };
  }

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        idNumber,
        mobileNumber,
        email,
        gender,
        dateOfBirth,
        location,
        bloodGroup,
      ];
}
