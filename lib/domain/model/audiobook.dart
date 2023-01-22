import 'package:flutter/foundation.dart';

class Audiobook {
  const Audiobook({
    required this.path,
    required this.name,
    required this.imageUrl,
    required this.timeListened,
    required this.totalTime,
  });

  final String path;
  final String name;
  final Uint8List? imageUrl;
  final int timeListened;
  final int totalTime;
}
