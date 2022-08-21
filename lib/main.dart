import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _systemPreferenceSwitch = true;
  bool _lightSwitch = false;
  bool _darkSwitch = false;

  ThemeMode? _themeMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dark and Light Mode"),
        ),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("User System Preference"),
              ),
              Switch(
                value: _systemPreferenceSwitch,
                onChanged: (newSwitchValue) {
                  _systemPreferenceSwitch
                      ? print("blocked")
                      : setState(() {
                          _systemPreferenceSwitch = true;
                          _lightSwitch = false;
                          _darkSwitch = false;
                          _themeMode = null;
                        });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Light Mode"),
              ),
              Switch(
                value: _lightSwitch,
                onChanged: (newSwitchValue) {
                  _lightSwitch
                      ? print("blocked")
                      : setState(() {
                          _systemPreferenceSwitch = false;
                          _lightSwitch = true;
                          _darkSwitch = false;
                          _themeMode = ThemeMode.light;
                        });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Dark Mode"),
              ),
              Switch(
                value: _darkSwitch,
                onChanged: (newSwitchValue) {
                  _darkSwitch
                      ? print("blocked")
                      : setState(() {
                          _systemPreferenceSwitch = false;
                          _lightSwitch = false;
                          _darkSwitch = true;
                          _themeMode = ThemeMode.dark;
                        });
                },
              )
            ],
          ),
        ]),
      ),
    );
  }
}
