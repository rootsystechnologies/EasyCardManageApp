part of 'collect_amount_bloc.dart';

@immutable
abstract class CollectAmountEvent {}
class FetchCollectAmount extends CollectAmountEvent{
  final String userId;
  final String amount;
  FetchCollectAmount({required this.amount,required this.userId});
}