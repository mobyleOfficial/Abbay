import 'dart:io';
import 'package:abbay/infrastructure/routes.dart';
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
          return MaterialButton(
            child: Text(_fileList[index].path),
            onPressed: () => Navigator.pushNamed(
              context,
              audiobookRoute,
              arguments: _fileList[index].path,
            ),
          );
        },
      );
}
