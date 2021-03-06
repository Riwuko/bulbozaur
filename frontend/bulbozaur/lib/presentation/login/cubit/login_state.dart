part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _HomeStateInitial;

  const factory LoginState.failure() = _HomeStateFailure;

  @Implements(LoginStateLoginSuccess)
  const factory LoginState.loginSuccess() = _HomeStateLoginSuccess;
}

abstract class LoginStateLoginSuccess {}
