import 'package:abbay/data/local/audiobook/audiobook_local_data_source.dart';
import 'package:abbay/data/model/audiobook_entity.dart';
import 'package:hive/hive.dart';

class AudiobookLocalDataSourceImpl implements AudiobookLocalDataSource {
  Future<Box> _openAudiobookLocationBoxKey() =>
      Hive.openBox(_audioBookLocationBoxKey);

  Future<Box> _openAudiobookBoxKey() => Hive.openBox(_audioBookBoxKey);

  Future<Box> _openCurrentAudiobookBoxKey() =>
      Hive.openBox(_currentAudioBookBoxKey);

  @override
  Future<String> getAudiobooksLocation() async {
    var box = await _openAudiobookLocationBoxKey();

    return box.get(_audioBookLocationBoxKey) ?? "";
  }

  @override
  Future<void> saveAudioBooksLocation(String path) async {
    var box = await _openAudiobookLocationBoxKey();

    return box.put(_audioBookLocationBoxKey, path);
  }

  @override
  Future<AudiobookEntity> getAudiobook(String path) {
    // TODO: implement getAudiobook
    throw UnimplementedError();
  }

  @override
  Future<void> saveAudiobook(AudiobookEntity entity) {
    // TODO: implement saveAudiobook
    throw UnimplementedError();
  }

  @override
  Future<AudiobookEntity?> getCurrentAudiobook() async {
    var box = await _openCurrentAudiobookBoxKey();

    return box.get(_currentAudioBookBoxKey);
  }

  @override
  Future<void> saveCurrentAudiobook(AudiobookEntity entity) async{
    var box = await _openCurrentAudiobookBoxKey();

    return box.put(_currentAudioBookBoxKey, entity);
  }

  static const _audioBookLocationBoxKey = "audioBookLocationBoxKey";
  static const _currentAudioBookBoxKey = "currentAudioBookBoxKey";
  static const _audioBookBoxKey = "audioBookBoxKey";
}
