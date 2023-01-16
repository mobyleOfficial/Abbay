class Audiobook {
  const Audiobook({
    required this.path,
    required this.name,
    required this.imageUrl,
    required this.totalTime,
  });

  final String path;
  final String name;
  final String imageUrl;
  final double totalTime;
}
