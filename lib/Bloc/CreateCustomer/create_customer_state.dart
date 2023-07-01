part of 'create_customer_bloc.dart';

@immutable
abstract class CreateCustomerState {}

class CreateCustomerInitial extends CreateCustomerState {}
class createCustomerblocLoading extends CreateCustomerState {}
class createCustomerblocLoaded extends CreateCustomerState {}
class createCustomerblocError extends CreateCustomerState {}