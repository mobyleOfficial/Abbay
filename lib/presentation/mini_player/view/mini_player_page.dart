import 'package:abbay/domain/model/audiobook.dart';
import 'package:abbay/presentation/mini_player/mini_player_cubit.dart';
import 'package:flutter/material.dart';

class MiniPlayerPage extends StatefulWidget {
  const MiniPlayerPage({
    required this.bloc,
    required this.audiobook,
    super.key,
  });

  final MiniPlayerCubit bloc;
  final Audiobook audiobook;

  @override
  State<StatefulWidget> createState() => _MiniPlayerPageState();
}

class _MiniPlayerPageState extends State<MiniPlayerPage> {
  MiniPlayerCubit get _bloc => widget.bloc;

  Audiobook get _audiobook => widget.audiobook;

  @override
  void initState() {
    super.initState();

    _bloc.getCurrentAudiobook();
  }

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.red,
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                "",
              ),
              child: SizedBox(
                width: 100,
                height: 100,
                child: _audiobook.imageUrl == null
                    ? Container()
                    : Image.memory(_audiobook.imageUrl!),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () async => await _bloc.playAudiobook(),
                child: Text("PLAY BOOK"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: _bloc.pauseAudiobook,
                child: Text("PAUSE BOOK"),
              ),
            ),
          ],
        ),
      );
}
