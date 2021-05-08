import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/base_features/base/page/base_page.dart';
import '../../../core/injection/injection.dart';
import '../../../core/language/localization.dart';
import '../../../core/presentation/styles/styles.dart';
import '../../../core/presentation/values/values.dart';
import '../../../core/presentation/widgets/app_widgets.dart';
import '../cubit/home_cubit.dart';

class HomePage extends BasePage {
  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<HomeCubit>()..init(),
        child: _Body(),
      );
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '${context.translate(SKeys.exampleFeature_hello)}',
                style: Theme.of(context).textTheme.headline1,

                /// Use text styles from theme of context
              ),
              _getSpaceBetweenItems(),
              _buildCounterTextWidget(),
              _buildTemperatureTextWidget(),
              _getSpaceBetweenItems(),
              AppElevatedButton(
                onPressed: () => _didClickedFetchTemperature(context),
                style: ButtonStyles.roundedButton,

                /// Use button styles
                text: '${context.translate(SKeys.exampleFeature_fetchTemperature)}',
                textStyle: Theme.of(context).textTheme.button,
              ),
            ],
          ),
        ),
        floatingActionButton: AppFloatingActionButton(
          onPressed: () => _didClickedCounterButton(context),
          child: Icon(Icons.add),
        ),
      );

  Widget _getSpaceBetweenItems() => SizedBox(height: AppDimensions.baseSpace);

  Widget _buildCounterTextWidget() => BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (prevState, currState) => currState is UpdateCounterState,
      builder: (context, state) => state.maybeWhen(
            updateCounter: (counter) => Text(
              '$counter',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            orElse: () => Container(),
          ));

  Widget _buildTemperatureTextWidget() => BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (prevState, currState) => currState is UpdateTemperatureState,
        builder: (context, state) => state.maybeWhen(
          updateTemperature: (temperature) => Text(
            '${context.translate(SKeys.exampleFeature_temperaturePrefix)} $temperature',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          failure: () => Text(
            '${context.translate(SKeys.exampleFeature_temperatureFetchedFailed)}',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          orElse: () => Container(),
        ),
      );

  /// actions on bottom of the widget class
  void _didClickedFetchTemperature(BuildContext context) => context.read<HomeCubit>().didTapFetchTemperature();

  void _didClickedCounterButton(BuildContext context) => context.read<HomeCubit>().didTapIncrement();
}
