import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_skeleton/core/presentation/styles/styles.dart';
import 'package:project_skeleton/presentation/login/cubit/login_cubit.dart';

import '../../../core/base_features/base/page/base_page.dart';
import '../../../core/injection/injection.dart';
import '../../../core/presentation/values/values.dart';

class LoginPage extends BasePage {
  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<LoginCubit>()..init(),
        child: _Body(),
      );
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  double _theWidthOfTextField(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.8;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(
                            right: 20.0, bottom: 50.0, top: 80),
                        child: SvgPicture.asset(AppImages.svgLogoOfTheApp)),
                    SvgPicture.asset(AppImages.svgNameOfTheApp),
                  ],
                ),
                Container(
                  width: _theWidthOfTextField(context),
                  child: TextFormField(
                    controller: _loginTextController,
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "Username",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        fillColor: AppColors.textFieldColor),
                  ),
                ),
                Container(
                  width: _theWidthOfTextField(context),
                  child: TextFormField(
                      controller: _passwordTextController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.white),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          fillColor: AppColors.textFieldColor)),
                ),
                Container(
                  height: 60,
                  width: _theWidthOfTextField(context),
                  child: TextButton(
                      onPressed: () => _didTapSingUpButton(
                          context,
                          _loginTextController.text,
                          _passwordTextController.text),
                      child: Text("Sign Up"),
                      style: ButtonStyles.loginPageButton),
                ),
                Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                        onPressed: null,
                        child: Text("Forget password ?"),
                        style: ButtonStyles.ForgetPasswordLoginPageButton))
              ],
            ),
          ),
        ),
      );
  void _didTapSingUpButton(
          BuildContext context, String login, String password) =>
      context.read<LoginCubit>().didTapContinueButton(login, password);
}
