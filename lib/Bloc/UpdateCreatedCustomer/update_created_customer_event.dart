part of 'update_created_customer_bloc.dart';

@immutable
abstract class UpdateCreatedCustomerEvent {}
class FetchUpdateCustomer extends UpdateCreatedCustomerEvent{
  final String userId;
  final String name;
  final String email;
  final String mobile;
  final String credit;
  FetchUpdateCustomer({required this.userId,required this.name,required this.email,required this.credit,required this.mobile});

}