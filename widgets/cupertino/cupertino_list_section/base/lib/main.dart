import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'CupertinoListSection demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _bluetooth = true;

  List<CupertinoListTile> _children(BuildContext context) {
    final List<CupertinoListTile> children = <CupertinoListTile>[];
    for (int i = 0; i < 5; i++) {
      children.add(
        CupertinoListTile(
          title: Text('Device $i'),
          additionalInfo: Text(i.isEven ? 'Connected' : 'Not Connected'),
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(CupertinoIcons.info_circle),
            onPressed: () => Navigator.of(context).push(
              CupertinoPageRoute<_SecondPage>(
                builder: (BuildContext context) =>
                    _SecondPage(title: 'Device $i'),
              ),
            ),
          ),
          onTap: () async => print('Connect'),
        ),
      );
    }
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Bluetooth'),
      ),
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 12.0),
              CupertinoListSection(
                hasLeading: false,
                footer: const Text('Now discoverable as "test-device".'),
                children: <CupertinoListTile>[
                  CupertinoListTile(
                    title: const Text('Bluetooth'),
                    trailing: CupertinoSwitch(
                      value: _bluetooth,
                      onChanged: (bool v) => setState(() => _bluetooth = v),
                    ),
                  ),
                ],
              ),
              CupertinoListSection(
                hasLeading: false,
                header: Text('My Devices'.toUpperCase()),
                children: _children(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
        previousPageTitle: 'Settings',
      ),
      child: Container(),
    );
  }
}

class _DummyIcon extends StatelessWidget {
  const _DummyIcon({Key? key, required this.color, required this.icon})
      : super(key: key);

  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28.0,
      height: 28.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(
        child: Icon(
          icon,
          color: CupertinoColors.white,
          size: 20.0,
        ),
      ),
    );
  }
}
