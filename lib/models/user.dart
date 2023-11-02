import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userId;
  final String email;
  final String name;

  const User({
    required this.userId,
    required this.email,
    required this.name,
  });

  static const empty = User(userId: '', email: '', name: '');

  User copyWith({String? userId, String? email, String? name}) {
    return User(
        userId: userId ?? this.userId,
        email: email ?? this.email,
        name: name ?? this.name);
  }

  @override
  List<Object?> get props => [userId, email, name];
}
