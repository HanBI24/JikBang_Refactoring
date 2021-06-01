import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../globals_variable.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreen createState() => _SettingScreen();
}

class _SettingScreen extends State<SettingScreen> {
  bool isSwitched = true;
  final ValueNotifier<ThemeMode> _notifier = ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: _notifier,
        builder: (_, mode, __) {
          return MaterialApp(
              theme: ThemeData(),
              darkTheme: ThemeData.dark(),
              themeMode: mode,
              home: Scaffold(
                body: SafeArea(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.keyboard_backspace),
                            Text(
                              '설정',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '내 정보',
                              style: TextStyle(fontSize: 20),
                            ),
                            Container(
                                width: 280,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[Icon(Icons.chevron_right)],
                                ))
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              '약관 및 정책',
                              style: TextStyle(fontSize: 20),
                            ),
                            Container(
                                width: 240,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[Icon(Icons.chevron_right)],
                                ))
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12)),
                        padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 240,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '알림 받기',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                                Text(
                                    '뉴스 및 이벤트, 관심 아파트 소식 등 직방\n서비스와 관련된 알림을 받을 수 있습니다.')
                              ],
                            ),
                            Container(
                                width: 110,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Switch(
                                      value: isSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched = value;
                                        });
                                      },
                                      activeColor: Colors.orange,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _notifier.value = mode == ThemeMode.light
                              ? ThemeMode.dark
                              : ThemeMode.light;
                          setState(() {
                            isDark = true;
                          });
                        },
                        child: Text('Toggle Theme'),
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}
