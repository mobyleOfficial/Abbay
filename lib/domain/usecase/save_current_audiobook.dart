import 'package:abbay/domain/model/audiobook.dart';
import 'package:abbay/domain/repository/audiobook_repository.dart';

class SaveCurrentAudioBook {
  SaveCurrentAudioBook({
    required this.repository,
  });

  final AudiobookRepository repository;

  Future<void> call(Audiobook audiobook) =>
      repository.saveCurrentAudiobook(audiobook);
}
