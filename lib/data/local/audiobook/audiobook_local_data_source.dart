import 'package:abbay/data/model/audiobook_entity.dart';

abstract class AudiobookLocalDataSource {
  Future<void> saveAudioBooksLocation(String path);

  Future<String> getAudiobooksLocation();

  Future<void> saveAudiobook(AudiobookEntity entity);

  Future<AudiobookEntity> getAudiobook(String path);

  Future<void> saveCurrentAudiobook(AudiobookEntity entity);

  Future<AudiobookEntity?> getCurrentAudiobook();
}