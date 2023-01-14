import 'package:abbay/data/local/audiobook/audiobook_local_data_source.dart';
import 'package:abbay/data/repository/audiobook_repository_impl.dart';
import 'package:abbay/domain/repository/audiobook_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> provideRepositories() => [
      ProxyProvider<AudiobookLocalDataSource, AudiobookRepository>(
        update: (_, localDataSource, repository) =>
            repository ??
            AudiobookRepositoryImpl(localDataSource: localDataSource),
      ),
    ];
