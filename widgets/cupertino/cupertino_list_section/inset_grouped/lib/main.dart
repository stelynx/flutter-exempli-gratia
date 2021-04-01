import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'CupertinoListSection.insetGrouped without leading demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  List<CupertinoListTile> _children(BuildContext context) {
    final List<_Note> notes = <_Note>[];

    for (int i = 0; i < 20; i++) {
      notes.add(_Note(
        title: 'Note number $i',
        subtitle: i.isEven ? 'Note number $i is an even-numbered note' : null,
      ));
    }

    return notes.map<CupertinoListTile>((_Note note) {
      return CupertinoListTile.notched(
        title: Text(note.title),
        subtitle: Text(
          note.subtitle ?? 'No additional text',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        onTap: () => Navigator.of(context).push(
          CupertinoPageRoute<_SecondPage>(
            builder: (BuildContext context) => const _SecondPage(),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Notes'),
            backgroundColor: CupertinoColors.systemGroupedBackground,
            border: null,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <CupertinoListSection>[
                CupertinoListSection.insetGrouped(
                  hasLeading: false,
                  children: _children(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        previousPageTitle: 'Notes',
      ),
      child: Container(),
    );
  }
}

class _Note {
  const _Note({required this.title, this.subtitle});

  final String title;
  final String? subtitle;
}
