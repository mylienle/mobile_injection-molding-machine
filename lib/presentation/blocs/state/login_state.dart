import 'package:equatable/equatable.dart';
import 'package:injection_molding_machine_application/domain/entities/login.dart';

class LoginState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoginInitState extends LoginState {
  bool isShow;
  bool isUsernameErr;
  bool isPasswordErr;
  LoginInitState(this.isShow, this.isPasswordErr, this.isUsernameErr);

  @override
  List<Object?> get props => [isShow, isUsernameErr, isPasswordErr];
}

class LoginStateFormatChecking extends LoginState {
  bool isUsernameErr;
  bool isPasswordErr;
  LoginStateFormatChecking(this.isPasswordErr, this.isUsernameErr);
  @override
  List<Object> get props => [isUsernameErr, isPasswordErr];
}

class LoginStateToggleShow extends LoginState {
  bool isShow;
  LoginStateToggleShow(this.isShow);

  @override
  List<Object> get props => [isShow];
}

class LoginStateLoadingRequest extends LoginState {
  DateTime timestamp;
  LoginStateLoadingRequest(this.timestamp);
  @override
  List<Object> get props => [timestamp];
}

class LoginStateLoginSuccessful extends LoginState {
  final User user;
  LoginStateLoginSuccessful(this.user);
  @override
  List<Object> get props => [user];
}

class LoginStateLoginFailure extends LoginState {
  LoginStateLoginFailure();
  @override
  List<Object> get props => [];
}
