import 'package:abbay/data/model/audiobook_entity.dart';
import 'package:abbay/domain/model/audiobook.dart';

extension AudiobookEntityExtensions on Audiobook {
  AudiobookEntity toEntity() => AudiobookEntity(
        path: path,
        name: name,
        imageUrl: imageUrl,
        timeListened: 0,
        totalTime: totalTime,
      );
}
