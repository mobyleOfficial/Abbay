import 'package:abbay/presentation/mini_player/mini_player_cubit.dart';
import 'package:abbay/presentation/mini_player/state/mini_player_ui_state.dart';
import 'package:abbay/presentation/mini_player/view/mini_player_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class MiniPlayerContainer extends StatefulWidget {
  const MiniPlayerContainer({
    required this.bloc,
    Key? key,
  }) : super(key: key);

  static Widget create() => Consumer<MiniPlayerCubit>(
        builder: (_, bloc, __) => MiniPlayerContainer(
          bloc: bloc,
        ),
      );

  final MiniPlayerCubit bloc;

  @override
  State<StatefulWidget> createState() => _MiniPlayerContainerState();
}

class _MiniPlayerContainerState extends State<MiniPlayerContainer> {
  MiniPlayerCubit get _bloc => widget.bloc;

  @override
  void initState() {
    super.initState();

    _bloc.getCurrentAudiobook();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<MiniPlayerCubit, MiniPlayerUiState>(
        bloc: _bloc,
        builder: (_, MiniPlayerUiState state) {
          return state.maybeWhen(
            showPlayerAction: (audiobook) => MiniPlayerPage(
              bloc: _bloc,
              audiobook: audiobook,
            ),
            hidePlayerAction: () => const SizedBox.shrink(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      );
}
