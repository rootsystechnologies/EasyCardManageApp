part of 'wallet_history_bloc.dart';

@immutable
abstract class WalletHistoryEvent {}
class FetchGetAllWallet extends WalletHistoryEvent{
  final String fromDate;
  final String toDate;
  final String search;
  final String particular;
  FetchGetAllWallet({required this.search,required this.toDate,required this.fromDate,required this.particular});
}