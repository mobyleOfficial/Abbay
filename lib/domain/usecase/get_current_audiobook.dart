import 'package:abbay/domain/model/audiobook.dart';
import 'package:abbay/domain/repository/audiobook_repository.dart';

class GetCurrentAudiobook {
  GetCurrentAudiobook({
    required this.repository,
  });

  final AudiobookRepository repository;

  Future<Audiobook?> call() => repository.getCurrentAudiobook();
}
