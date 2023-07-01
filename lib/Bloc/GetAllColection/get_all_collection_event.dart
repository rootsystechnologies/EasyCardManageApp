part of 'get_all_collection_bloc.dart';

@immutable
abstract class GetAllCollectionEvent {}
class FetchGetAllCollection extends GetAllCollectionEvent{
  final String fromDate;
  final String toDate;
  final String search;
  FetchGetAllCollection({required this.search,required this.toDate,required this.fromDate});
}