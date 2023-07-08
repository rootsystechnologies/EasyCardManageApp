part of 'update_created_customer_bloc.dart';

@immutable
abstract class UpdateCreatedCustomerState {}

class UpdateCreatedCustomerInitial extends UpdateCreatedCustomerState {}
class UpdateCreatedCustomerblocLoading extends UpdateCreatedCustomerState {}
class UpdateCreatedCustomerblocLoaded extends UpdateCreatedCustomerState {}
class UpdateCreatedCustomerblocError extends UpdateCreatedCustomerState {}