abstract class AudiobookRepository {
  Future<void> saveAudioBooksLocation(String path);

  Future<String> getAudiobooksLocation();
}
