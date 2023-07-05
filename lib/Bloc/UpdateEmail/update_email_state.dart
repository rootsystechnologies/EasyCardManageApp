part of 'update_email_bloc.dart';

@immutable
abstract class UpdateEmailState {}

class UpdateEmailInitial extends UpdateEmailState {}
class ChangeEmailblocLoading extends UpdateEmailState {}
class ChangeEmailblocLoaded extends UpdateEmailState {}
class ChangeEmailblocError extends UpdateEmailState {}