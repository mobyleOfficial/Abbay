import 'package:abbay/presentation/audiobook/audiobook_cubit.dart';
import 'package:abbay/presentation/audiobook/state/audiobook_ui_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';

class AudiobookPage extends StatefulWidget {
  const AudiobookPage({
    required this.bloc,
    required this.path,
    super.key,
  });

  final AudiobookCubit bloc;
  final String path;

  @override
  State<StatefulWidget> createState() => _AudiobookPageState();
}

class _AudiobookPageState extends State<AudiobookPage> {
  AudiobookCubit get _bloc => widget.bloc;

  String get _path => widget.path;

  @override
  void initState() {
    super.initState();
    _bloc.getFolderFile(_path);
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: BlocBuilder<AudiobookCubit, AudiobookUiState>(
            bloc: _bloc,
            builder: (_, AudiobookUiState state) => state.maybeWhen(
              audiobookFound: () {
                _bloc.playAudiobook();

                return Row(
                  children: [
                    MaterialButton(
                      onPressed: () async => await _bloc.playAudiobook(),
                      child: Text("PLAY BOOK"),
                    ),
                    MaterialButton(
                      onPressed: _bloc.pauseAudiobook,
                      child: Text("PAUSE BOOK"),
                    ),
                  ],
                );
              },
              orElse: () => Container(),
            ),
          ),
        ),
      );
}
