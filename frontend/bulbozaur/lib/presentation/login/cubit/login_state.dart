part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _HomeStateInitial;

  @Implements(LoginStateLoginSuccess)
  const factory LoginState.loginSuccess() = _HomeStateLoginSuccess;

  const factory LoginState.invalidAdress() = _HomeStateInvalidAdress;

  const factory LoginState.failure() = _HomeStateFailure;
}

abstract class LoginStateLoginSuccess {}
