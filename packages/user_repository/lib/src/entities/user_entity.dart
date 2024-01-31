import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String id;
  final String email;
  final String name;
  final String? picture;

  const MyUserEntity(
      {required this.id,
      required this.email,
      required this.name,
      this.picture});

  Map<String, Object?> toDocument() {
    return {'id': id, 'email': email, 'name': name, 'picture': picture};
  }

  static MyUserEntity fromDocument(Map<String, dynamic> document) {
    return MyUserEntity(
        id: document['id'],
        email: document['email'],
        name: document['name'],
        picture: document['picture']);
  }

  @override
  List<Object?> get props => [id, email, name, picture];
}
