part of 'update_email_bloc.dart';

@immutable
abstract class UpdateEmailEvent {}
class FetchChangeEmail extends UpdateEmailEvent {
  final String email;

  FetchChangeEmail(
      { required this.email});
}