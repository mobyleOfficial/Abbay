import 'package:abbay/domain/model/audiobook.dart';

abstract class AudiobookRepository {
  Future<void> saveAudioBooksLocation(String path);

  Future<String> getAudiobooksLocation();

  Future<Audiobook?> getCurrentAudiobook();

  Future<void> saveCurrentAudiobook(Audiobook audiobook);
}
