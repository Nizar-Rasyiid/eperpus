part of 'models.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String numberPhone;
  final String profilePicture;

  User(this.id, this.email,{
    this.name,
    this.numberPhone,
    this.profilePicture
  });

  @override
  String toString() {
    return "[$id] - $name, $email";
  }

  @override
  List<Object> get props => [
    id,
    email,
    name,
    profilePicture,
    numberPhone,
  ];

}