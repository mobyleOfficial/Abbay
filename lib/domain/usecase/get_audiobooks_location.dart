import 'package:abbay/domain/repository/audiobook_repository.dart';

class GetAudioBooksLocation {
  GetAudioBooksLocation({
    required this.repository,
  });

  final AudiobookRepository repository;

  Future<String> call() => repository.getAudiobooksLocation();
}
