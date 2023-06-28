part of 'get_all_customers_bloc.dart';

@immutable
abstract class GetAllCustomersState {}

class GetAllCustomersInitial extends GetAllCustomersState {}
class GetAllCustomersblocLoading extends GetAllCustomersState {}
class GetAllCustomersblocLoaded extends GetAllCustomersState {}
class GetAllCustomersblocError extends GetAllCustomersState {}