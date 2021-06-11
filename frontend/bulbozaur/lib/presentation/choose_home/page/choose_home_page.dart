import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_skeleton/core/base_features/base/cubit/base_cubit.dart';
import 'package:project_skeleton/core/base_features/base/page/base_page.dart';
import 'package:project_skeleton/core/injection/injection.dart';
import 'package:project_skeleton/core/presentation/styles/styles.dart';
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
      body: BlocConsumer<ChooseHomeCubit, ChooseHomeState>(
          listener: (context, state) => state.maybeWhen(
              goToTheSingleRoom: (id) =>
                  context.navigator.push(SingleHomePageRoute(idOfHouse: id)),
              orElse: () => null),
          buildWhen: (p, c) => c is BuildingState,
          builder: (context, state) => state.maybeWhen(
              buildings: (buildings) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Welcome user ",
                              style: TextStyles.menuTitlePage,
                            ),
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
                        Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                              itemCount: buildings.length,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onDoubleTap: () => _didTapHome(
                                      context, int.parse(buildings[index].id)),
                                  child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 15.0, horizontal: 10.0),
                                      height: 100,
                                      child: Stack(
                                        children: [
                                          _choosePicture(
                                              int.parse(buildings[index].id)),
                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                buildings[index].name,
                                                style: TextStyles.buildingsText,
                                              ),
                                            ),
                                          )
                                        ],
                                      )),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
              orElse: () => Container(
                    color: Colors.amber,
                  ))));
  Widget _choosePicture(int id) {
    switch (id) {
      case 0:
        return SvgPicture.asset(
          AppImages.svgPhotoHome1,
          fit: BoxFit.fill,
        );
      case 1:
        return SvgPicture.asset(AppImages.svgPhotoHome2, fit: BoxFit.fill);
      case 2:
        return SvgPicture.asset(AppImages.svgPhotoHome3, fit: BoxFit.fill);
      case 3:
        return SvgPicture.asset(AppImages.svgPhotoHome4, fit: BoxFit.fill);
      case 4:
        return SvgPicture.asset(AppImages.svgPhotoHome5, fit: BoxFit.fill);
      case 5:
        return SvgPicture.asset(AppImages.svgPhotoHome6, fit: BoxFit.fill);
      case 6:
        return SvgPicture.asset(AppImages.svgPhotoHome7, fit: BoxFit.fill);
      case 7:
        return SvgPicture.asset(AppImages.svgPhotoHome8, fit: BoxFit.fill);
      case 8:
        return SvgPicture.asset(AppImages.svgPhotoHome9, fit: BoxFit.fill);
      case 9:
        return SvgPicture.asset(AppImages.svgPhotoHome10, fit: BoxFit.fill);

      default:
        return SvgPicture.asset(AppImages.svgPhotoHome1, fit: BoxFit.fill);
    }
  }

  void _didTapHome(BuildContext context, int id) =>
      context.read<ChooseHomeCubit>().didTapHome(id);
}
