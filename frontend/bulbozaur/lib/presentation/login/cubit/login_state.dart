part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {

  const factory LoginState.initial() = _HomeStateInitial;


  const factory LoginState.failure() = _HomeStateFailure;

}