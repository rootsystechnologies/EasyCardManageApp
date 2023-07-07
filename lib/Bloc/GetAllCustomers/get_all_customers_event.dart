part of 'get_all_customers_bloc.dart';

@immutable
abstract class GetAllCustomersEvent {}
class FetchGetAllCustomers extends GetAllCustomersEvent{
  final String searchKey;
  final String page;
  FetchGetAllCustomers({required this.searchKey,required this.page});
}