part of 'change_password_bloc.dart';

@immutable
abstract class ChangePasswordState {}

class ChangePasswordInitial extends ChangePasswordState {}
class ChangePasswordblocLoading extends ChangePasswordState {}
class ChangePasswordblocLoaded extends ChangePasswordState {}
class ChangePasswordblocError extends ChangePasswordState {}