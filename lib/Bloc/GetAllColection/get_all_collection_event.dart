part of 'get_all_collection_bloc.dart';

@immutable
abstract class GetAllCollectionEvent {}
class FetchGetAllCollection extends GetAllCollectionEvent{
  final String fromDate;
  final String toDate;
  final int userId;
  final bool forAll;
  final int page;
  FetchGetAllCollection({required this.userId,required this.toDate,required this.fromDate,required this.forAll,required this.page});
}