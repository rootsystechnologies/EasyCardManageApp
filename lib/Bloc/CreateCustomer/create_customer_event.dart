part of 'create_customer_bloc.dart';

@immutable
abstract class CreateCustomerEvent {}

class FecthCreateCustomer extends CreateCustomerEvent {
  final String name;
  final String mobile;
  final String email;
  final String opbalance;
  final String creditLimit;
  final String password;
  final String passwordConfirmation;
  final List<String> allowedPerms;

  FecthCreateCustomer(
      {required this.passwordConfirmation,
      required this.password,
      required this.creditLimit,
      required this.mobile,
      required this.email,
      required this.name,
      required this.allowedPerms,
      required this.opbalance});
}
