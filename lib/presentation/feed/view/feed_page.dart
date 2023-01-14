import 'dart:io';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({
    required this.filesList,
    super.key,
  });

  final List<FileSystemEntity> filesList;

  @override
  State<StatefulWidget> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  get _fileList => widget.filesList;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: _fileList.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(_fileList[index].path);
        },
      );
}
