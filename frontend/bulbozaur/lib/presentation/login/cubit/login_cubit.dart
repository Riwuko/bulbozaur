import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_skeleton/domain/use_case/loginUseCase.dart';

import '../../../core/base_features/base/cubit/base_cubit.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@Injectable()
class LoginCubit extends BaseCubit<LoginState> {
  CheckIfLoginIsGood _checkIfLoginIsGood;

  LoginCubit(this._checkIfLoginIsGood) : super(LoginState.initial());

  @override
  Future<void> init() async {}

  Future<void> didTapContinueButton(String login, String password) async {
    var responses = false;
    // (await _checkIfLoginIsGood(login, password)).fold(
    //   (l) => emit(LoginState.failure()),
    //   (r) => responses = r,
    // );
    // if (responses == true) {
    //   emit(LoginState.loginSuccess());
    // } else {
    //   emit(LoginState.invalidAdress());
    // }
    emit(LoginState.loginSuccess());
  }
}
