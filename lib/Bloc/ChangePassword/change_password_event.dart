part of 'change_password_bloc.dart';

@immutable
abstract class ChangePasswordEvent {}

class FetchChangePassword extends ChangePasswordEvent {
  final String password;

  FetchChangePassword(
      { required this.password});
}
