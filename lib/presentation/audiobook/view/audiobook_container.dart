import 'package:abbay/presentation/audiobook/audiobook_cubit.dart';
import 'package:abbay/presentation/audiobook/view/audiobook_page.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class AudiobookContainer extends StatelessWidget {
  const AudiobookContainer({
    required this.bloc,
    required this.audiobookPath,
    Key? key,
  }) : super(key: key);

  static Widget create(String audiobookPath) =>
      ProxyProvider<AudioPlayer, AudiobookCubit>(
        update: (
          _,
          player,
          bloc,
        ) =>
            bloc ??
            AudiobookCubit(
              player: player,
            ),
        child: Consumer<AudiobookCubit>(
          builder: (_, bloc, __) => AudiobookContainer(
            bloc: bloc,
            audiobookPath: audiobookPath,
          ),
        ),
      );

  final AudiobookCubit bloc;
  final String audiobookPath;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: AudiobookPage(
          bloc: bloc,
          path: audiobookPath,
        ),
      );
}
