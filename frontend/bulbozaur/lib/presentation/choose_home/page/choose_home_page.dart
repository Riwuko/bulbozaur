import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_skeleton/core/base_features/base/cubit/base_cubit.dart';
import 'package:project_skeleton/core/base_features/base/page/base_page.dart';
import 'package:project_skeleton/core/injection/injection.dart';
import 'package:project_skeleton/core/presentation/values/values.dart';
import 'package:project_skeleton/presentation/choose_home/cubit/choose_home_cubit.dart';

class ChooseHomePage extends BasePage {
  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<ChooseHomeCubit>()..init(),
        child: _Body(),
      );
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      body: BlocBuilder<ChooseHomeCubit, ChooseHomeState>(
          buildWhen: (p, c) => c is LayoutBuilderState,
          builder: (context, state) => state.maybeWhen(
              buildings: () => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Welcome user again"),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: new BoxDecoration(
                                color: AppColors.activeCircles,
                                shape: BoxShape.circle,
                              ),
                            )
                          ],
                        ),
                        // ListView.builder(
                        //     itemCount: 10,
                        //     itemBuilder: (BuildContext context, int index) {
                        //       return Container(
                        //           margin: const EdgeInsets.symmetric(
                        //               vertical: 5.0, horizontal: 10.0),
                        //           height: 60);
                        //     }),
                      ],
                    ),
                  ),
              orElse: () => Container())));
}
