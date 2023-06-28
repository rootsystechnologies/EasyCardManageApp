part of 'get_all_permission_bloc.dart';

@immutable
abstract class GetAllPermissionState {}

class GetAllPermissionInitial extends GetAllPermissionState {}
class GetAllPermissionblocLoading extends GetAllPermissionState {}
class GetAllPermissionblocLoaded extends GetAllPermissionState {}
class GetAllPermissionblocError extends GetAllPermissionState {}