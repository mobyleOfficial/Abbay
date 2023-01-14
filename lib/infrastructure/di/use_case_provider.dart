import 'package:abbay/domain/repository/audiobook_repository.dart';
import 'package:abbay/domain/usecase/get_audiobooks_location.dart';
import 'package:abbay/domain/usecase/save_audiobooks_location.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> provideUseCases() => [
      ProxyProvider<AudiobookRepository, GetAudioBooksLocation>(
        update: (_, repository, useCase) =>
            useCase ?? GetAudioBooksLocation(repository: repository),
      ),
      ProxyProvider<AudiobookRepository, SaveAudioBooksLocation>(
        update: (_, repository, useCase) =>
            useCase ?? SaveAudioBooksLocation(repository: repository),
      ),
    ];
