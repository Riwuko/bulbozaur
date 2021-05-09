import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/base_features/base/cubit/base_cubit.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@Injectable()
class LoginCubit extends BaseCubit<LoginState> {
  LoginCubit() : super(LoginState.initial());

  @override
  Future<void> init() async {}

  Future<void> didTapContinueButton(String login, String password) async {
    emit(LoginState.loginSuccess());
  }
}
