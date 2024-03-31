part of 'auth_bloc.dart';

@immutable
sealed class AuthState {
  const AuthState();
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final String uid;
  //  const AuthSuccess(this.uid); call constructure เหมือนบังคับให้อุ้ม data ไปด้วยคล้าย param
  const AuthSuccess(this.uid);
}

final class AuthFailure extends AuthState {
  final String message;
  const AuthFailure(this.message);
}
