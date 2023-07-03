part of 'recharge_bloc.dart';

@immutable
abstract class RechargeEvent {}
class FetchRechargeAmount extends RechargeEvent{
  final String userId;
  final String amount;
  final int pin;
  FetchRechargeAmount({required this.amount,required this.userId,required this.pin});
}