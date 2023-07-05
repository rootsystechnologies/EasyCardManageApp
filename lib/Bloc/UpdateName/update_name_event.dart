part of 'update_name_bloc.dart';

@immutable
abstract class UpdateNameEvent {}
class FetchChangeName extends UpdateNameEvent {
  final String name;

  FetchChangeName(
      { required this.name});
}