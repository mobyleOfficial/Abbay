import 'package:abbay/data/local/audiobook/audiobook_local_data_source.dart';
import 'package:abbay/data/local/audiobook/audiobook_local_data_source_impl.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> provideLocalDataSources() => [
  ProxyProvider0<AudiobookLocalDataSource>(
    update: (_, localDataSource) => localDataSource ?? AudiobookLocalDataSourceImpl()
  ),
];