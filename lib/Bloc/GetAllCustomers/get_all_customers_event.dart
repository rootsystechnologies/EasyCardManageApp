part of 'get_all_customers_bloc.dart';

@immutable
abstract class GetAllCustomersEvent {}
class FetchGetAllCustomers extends GetAllCustomersEvent{
  final String searchKey;
  FetchGetAllCustomers({required this.searchKey});
}