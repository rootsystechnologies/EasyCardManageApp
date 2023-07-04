part of 'change_password_bloc.dart';

@immutable
abstract class ChangePasswordEvent {}

class FetchChangePassword extends ChangePasswordEvent {
  final String name;
  final String email;
  final String password;

  FetchChangePassword(
      {required this.email, required this.name, required this.password});
}
