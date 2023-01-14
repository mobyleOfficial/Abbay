import 'package:abbay/data/local/audiobook/audiobook_local_data_source.dart';
import 'package:abbay/domain/repository/audiobook_repository.dart';

class AudiobookRepositoryImpl implements AudiobookRepository {
  AudiobookRepositoryImpl({
    required this.localDataSource,
  });

  final AudiobookLocalDataSource localDataSource;

  @override
  Future<String> getAudiobooksLocation() =>
      localDataSource.getAudiobooksLocation();

  @override
  Future<void> saveAudioBooksLocation(String path) =>
      localDataSource.saveAudioBooksLocation(path);
}
