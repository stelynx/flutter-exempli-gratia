import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        // `CupertinoSliverNavigationBar` has to be placed inside a sliver
        // container, e.g. `CustomScrolView`.
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: const Text('Profile'),
              // The `middle` is always shown. In future updates, middle will be
              // only shown in collapsed state instead of `largeTitle`.
              middle: const Text('@stelynx'),
              trailing: CupertinoButton(
                child: const Text('Edit'),
                // Buttons have to be set zero padding in order to appear normal
                // in navigation bars.
                padding: EdgeInsets.zero,
                onPressed: () {},
              ),
            ),
            // Content of the page instead of `SliverFillRemaining`.
            const SliverFillRemaining(),
          ],
        ),
      ),
    );
  }
}
