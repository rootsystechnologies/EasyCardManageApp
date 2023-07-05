part of 'change_pin_bloc.dart';

@immutable
abstract class ChangePinEvent {}
class FetchChangePin extends ChangePinEvent {
  final String oldPin;
  final String newPin;

  FetchChangePin(
      { required this.newPin,required this.oldPin});
}
