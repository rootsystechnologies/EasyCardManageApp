part of 'get_all_collection_bloc.dart';

@immutable
abstract class GetAllCollectionState {}

class GetAllCollectionInitial extends GetAllCollectionState {}
class GetAllCollectionblocLoading extends GetAllCollectionState {}
class GetAllCollectionblocLoaded extends GetAllCollectionState {}
class GetAllCollectionblocError extends GetAllCollectionState {}