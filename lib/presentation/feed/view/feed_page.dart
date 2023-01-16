import 'dart:io';
import 'package:abbay/presentation/feed/feed_cubit.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({
    required this.filesList,
    required this.bloc,
    super.key,
  });

  final List<FileSystemEntity> filesList;
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
          return MaterialButton(
            child: Text(_fileList[index].path),
            onPressed: () async {
              await _bloc.selectAudiobook(index);
              await _bloc.playAudiobook();
            }
          );
        },
      );
}
