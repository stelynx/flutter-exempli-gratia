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
  bool _airplaneMode = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Settings'),
            backgroundColor: CupertinoColors.systemGroupedBackground,
            border: null,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <CupertinoListSection>[
                CupertinoListSection(
                  children: <CupertinoListTile>[
                    CupertinoListTile(
                      title: const Text('Airplane Mode'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeOrange,
                        icon: CupertinoIcons.airplane,
                      ),
                      trailing: CupertinoSwitch(
                        value: _airplaneMode,
                        onChanged: (bool v) =>
                            setState(() => _airplaneMode = v),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Wi-Fi'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeBlue,
                        icon: CupertinoIcons.wifi,
                      ),
                      additionalInfo: const Text('Not Connected'),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Wi-fi');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Bluetooth'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeBlue,
                        icon: CupertinoIcons.bluetooth,
                      ),
                      additionalInfo: const Text('On'),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Bluetooth');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Mobile Data'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeGreen,
                        icon: CupertinoIcons.antenna_radiowaves_left_right,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Mobile data');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Personal Hotspot'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeGreen,
                        icon: CupertinoIcons.personalhotspot,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Personal Hotspot');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                CupertinoListSection(
                  children: <CupertinoListTile>[
                    CupertinoListTile(
                      title: const Text('Notifications'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemRed,
                        icon: CupertinoIcons.app_badge,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Notifications');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Sounds & Haptics'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemRed,
                        icon: CupertinoIcons.speaker_3_fill,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Sounds & Haptics');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Do Not Disturb'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemIndigo,
                        icon: CupertinoIcons.moon_fill,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Do Not Disturb');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Screen Time'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemIndigo,
                        icon: CupertinoIcons.hourglass,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Screen Time');
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                CupertinoListSection(
                  children: <CupertinoListTile>[
                    CupertinoListTile(
                      title: const Text('General'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemGrey,
                        icon: CupertinoIcons.settings,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'General');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Control Centre'),
                      leading: const _DummyIcon(
                          color: CupertinoColors.systemGrey,
                          icon: CupertinoIcons.tuningfork),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Control Centre');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Display & Brightness'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeBlue,
                        icon: CupertinoIcons.textformat,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(
                                title: 'Display & Brightness');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Home Screen'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemIndigo,
                        icon: CupertinoIcons.home,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Home Screen');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Accessibility'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeBlue,
                        icon: CupertinoIcons.person_circle,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Accessibility');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Wallpaper'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemTeal,
                        icon: CupertinoIcons.circle,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Wallpaper');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Siri & Search'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.black,
                        icon: CupertinoIcons.circle,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Siri & Search');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Face ID & Passcode'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeGreen,
                        icon: CupertinoIcons.square,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(
                                title: 'Face ID & Passcode');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Emergency SOS'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemRed,
                        icon: CupertinoIcons.question,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Emergency SOS');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Exposure Notifications'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.systemGrey6,
                        icon: CupertinoIcons.circle,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(
                                title: 'Exposure Notifications');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Battery'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeGreen,
                        icon: CupertinoIcons.battery_100,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Battery');
                          },
                        ),
                      ),
                    ),
                    CupertinoListTile(
                      title: const Text('Privacy'),
                      leading: const _DummyIcon(
                        color: CupertinoColors.activeBlue,
                        icon: CupertinoIcons.hand_raised,
                      ),
                      trailing: const CupertinoListTileChevron(),
                      onTap: () => Navigator.of(context).push(
                        CupertinoPageRoute<_SecondPage>(
                          builder: (BuildContext context) {
                            return const _SecondPage(title: 'Privacy');
                          },
                        ),
                      ),
                    ),
                  ],
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
