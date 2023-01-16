import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providePlayer() => [
      ProxyProvider0<AudioPlayer>(
        update: (_, player) => player ?? AudioPlayer(),
      ),
    ];
