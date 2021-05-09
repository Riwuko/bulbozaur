import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_skeleton/core/base_features/base/page/base_page.dart';
import 'package:project_skeleton/core/injection/injection.dart';
import 'package:project_skeleton/presentation/single_home/cubit/single_home_cubit.dart';

class SingleHomePage extends BasePage {
  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<SingleHomeCubit>()..init(),
        child: _Body(),
      );
}

class _Body extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) => PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: [
          _singleHomeFirstPage(),
        ],
      );

  Widget _singleHomeFirstPage() => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Picture"),
            Text("Switching into manual"),
            Text("ListView of rooms"),
            Text("The downside info")
          ],
        ),
      );
}
