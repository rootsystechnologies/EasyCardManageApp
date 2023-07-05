part of 'wallet_history_bloc.dart';

@immutable
abstract class WalletHistoryState {}

class WalletHistoryInitial extends WalletHistoryState {}
class GetAllWalletblocLoading extends WalletHistoryState {}
class GetAllWalletblocLoaded extends WalletHistoryState {}
class GetAllWalletblocError extends WalletHistoryState {}