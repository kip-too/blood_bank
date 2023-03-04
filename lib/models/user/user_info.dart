import 'package:equatable/equatable.dart';

class UserInfo extends Equatable {
  final String firstName;
  final String lastName;
  final String idNumber;
  final String mobileNumber;
  final String email;
  final String gender;
  final DateTime dateOfBirth;
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
