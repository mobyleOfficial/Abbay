import 'package:abbay/infrastructure/di/bloc_provider.dart';
import 'package:abbay/infrastructure/di/local_data_source_provider.dart';
import 'package:abbay/infrastructure/di/player_provider.dart';
import 'package:abbay/infrastructure/di/repository_provider.dart';
import 'package:abbay/infrastructure/di/use_case_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class AbbayGeneralProvider extends StatelessWidget {
  const AbbayGeneralProvider(
    this.builder, {
    Key? key,
  }) : super(key: key);

  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ...providePlayer(),
          ...provideLocalDataSources(),
          ...provideRepositories(),
          ...provideUseCases(),
          ...provideBlocs(),
        ],
        child: builder(context),
      );
}
