import 'package:abbay/data/local/audiobook/audiobook_local_data_source.dart';
import 'package:abbay/data/mappers/domain_to_entity_mappers.dart';
import 'package:abbay/domain/model/audiobook.dart';
import 'package:abbay/domain/repository/audiobook_repository.dart';
import 'package:abbay/data/mappers/entity_to_domain_mappers.dart';

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

  @override
  Future<Audiobook?> getCurrentAudiobook() async {
    final audiobook = await localDataSource.getCurrentAudiobook();

    return audiobook?.toDomain();
  }

  @override
  Future<void> saveCurrentAudiobook(Audiobook audiobook) =>
      localDataSource.saveCurrentAudiobook(audiobook.toEntity());
}
