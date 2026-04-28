import 'package:kuldi/features/profile/domain/entities/profile.dart';

class ProfileModel extends Profile {
  final String firstName;
  final String lastName;
  final String avatar;

  const ProfileModel({
    required super.id,
    required super.email,
    required this.avatar,
    required this.firstName,
    required this.lastName,
  }) : super(fullname: "$firstName $lastName", profileImageUrl: avatar);

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> data = json['data'];
    return ProfileModel(
      id: data['id'],
      email: data['email'],
      firstName: data['first_name'],
      lastName: data['last_name'],
      avatar: data['avatar'],
    );
  }
}
