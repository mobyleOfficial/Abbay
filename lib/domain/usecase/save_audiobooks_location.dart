import 'package:abbay/domain/repository/audiobook_repository.dart';

class SaveAudioBooksLocation {
  SaveAudioBooksLocation({
    required this.repository,
  });

  final AudiobookRepository repository;

  Future<void> call(String path) => repository.saveAudioBooksLocation(path);
}