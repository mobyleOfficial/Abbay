import 'package:abbay/data/local/audiobook/audiobook_local_data_source.dart';
import 'package:hive/hive.dart';

class AudiobookLocalDataSourceImpl implements AudiobookLocalDataSource {
  Future<Box> _openAudioBookBoxKey() => Hive.openBox(_audioBookBoxKey);

  @override
  Future<String> getAudiobooksLocation() async {
    var box = await _openAudioBookBoxKey();

    return box.get(_audioBookBoxKey) ?? "";
  }

  @override
  Future<void> saveAudioBooksLocation(String path) async {
    var box = await _openAudioBookBoxKey();

    return box.put(_audioBookBoxKey, path);
  }

  static const _audioBookBoxKey = "audioBookBoxKey";
}
