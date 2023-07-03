part of 'recharge_bloc.dart';

@immutable
abstract class RechargeState {}

class RechargeInitial extends RechargeState {}
class RechargeblocLoading extends RechargeState {}
class RechargeblocLoaded extends RechargeState {}
class RechargeblocError extends RechargeState {}