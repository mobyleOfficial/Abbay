import 'package:abbay/presentation/feed/view/feed_container.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: FeedContainer.create(),
      );
}
