abstract class AudiobookLocalDataSource {
  Future<void> saveAudioBooksLocation(String path);

  Future<String> getAudiobooksLocation();
}