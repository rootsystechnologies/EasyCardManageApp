part of 'wallet_history_bloc.dart';

@immutable
abstract class WalletHistoryEvent {}

class FetchGetAllWallet extends WalletHistoryEvent {
  final String fromDate;
  final String toDate;
  final String search;
  final String particular;
  final bool forAll;
  final int userId;


  FetchGetAllWallet(
      {required this.search,
      required this.toDate,
      required this.fromDate,
      required this.particular,
      required this.forAll,
      required this.userId});
}
