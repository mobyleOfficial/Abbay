import 'package:abbay/data/model/audiobook_entity.dart';
import 'package:abbay/domain/model/audiobook.dart';

extension AudiobookEntityExtensions on AudiobookEntity {
  Audiobook toDomain() => Audiobook(
        path: path,
        name: name,
        imageUrl: imageUrl,
        timeListened: timeListened,
        totalTime: totalTime,
      );
}
