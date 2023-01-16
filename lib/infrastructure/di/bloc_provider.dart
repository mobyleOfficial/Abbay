import 'package:abbay/domain/usecase/get_current_audiobook.dart';
import 'package:abbay/presentation/mini_player/mini_player_cubit.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> provideBlocs() => [
      ProxyProvider2<AudioPlayer, GetCurrentAudiobook, MiniPlayerCubit>(
        update: (
          _,
          player,
          getCurrentAudiobook,
          bloc,
        ) =>
            bloc ??
            MiniPlayerCubit(
              player: player,
              getCurrentAudiobookUseCase: getCurrentAudiobook,
            ),
      )
    ];
