import 'package:hive/hive.dart';

part 'audiobook_entity.g.dart';

@HiveType(typeId: 0)
class AudiobookEntity extends HiveObject {
  AudiobookEntity({
    required this.path,
    required this.name,
    required this.imageUrl,
    required this.timeListened,
    required this.totalTime,
  });

  @HiveField(0)
  final String path;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String imageUrl;

  @HiveField(3)
  final double timeListened;

  @HiveField(4)
  final double totalTime;
}
