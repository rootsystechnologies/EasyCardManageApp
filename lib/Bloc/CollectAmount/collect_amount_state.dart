part of 'collect_amount_bloc.dart';

@immutable
abstract class CollectAmountState {}

class CollectAmountInitial extends CollectAmountState {}
class CollectblocLoading extends CollectAmountState {}
class CollectblocLoaded extends CollectAmountState {}
class CollectblocError extends CollectAmountState {}