part of 'update_name_bloc.dart';

@immutable
abstract class UpdateNameState {}

class UpdateNameInitial extends UpdateNameState {}
class ChangeNameblocLoading extends UpdateNameState {}
class ChangeNameblocLoaded extends UpdateNameState {}
class ChangeNameblocError extends UpdateNameState {}