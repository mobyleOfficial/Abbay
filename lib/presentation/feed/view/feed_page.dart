import 'package:abbay/domain/model/audiobook.dart';
import 'package:abbay/presentation/feed/feed_cubit.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({
    required this.filesList,
    required this.bloc,
    super.key,
  });

  final List<Audiobook> filesList;
  final FeedCubit bloc;

  @override
  State<StatefulWidget> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  get _fileList => widget.filesList;

  FeedCubit get _bloc => widget.bloc;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: _fileList.length,
        itemBuilder: (BuildContext context, int index) {
          final audiobook = _fileList[index];

          return Row(
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Image.memory(audiobook.imageUrl),
              ),
              Expanded(
                child: MaterialButton(
                    child: Text(audiobook.name),
                    onPressed: () async {
                      await _bloc.selectAudiobook(index);
                      await _bloc.playAudiobook();
                    }),
              ),
            ],
          );
        },
      );
}
