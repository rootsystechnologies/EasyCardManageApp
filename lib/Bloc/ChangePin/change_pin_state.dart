part of 'change_pin_bloc.dart';

@immutable
abstract class ChangePinState {}

class ChangePinInitial extends ChangePinState {}
class ChangePinblocLoading extends ChangePinState {}
class ChangePinblocLoaded extends ChangePinState {}
class ChangePinblocError extends ChangePinState {}