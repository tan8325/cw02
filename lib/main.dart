import 'package:flutter/material.dart';

void main() {
  runApp(const RunMyApp());
}

class RunMyApp extends StatefulWidget {
  const RunMyApp({super.key});

  @override
  State<RunMyApp> createState() => _RunMyAppState();
}

class _RunMyAppState extends State<RunMyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.light,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(changeTheme: changeTheme),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final Function(ThemeMode) changeTheme;

  const HomeScreen({super.key, required this.changeTheme});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(title: const Text('CW02')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            AnimatedContainer(
              width: 200,
              height: 200,
              duration: const Duration(milliseconds: 500), 
              curve: Curves.easeInOut, 
              decoration: BoxDecoration(
                color: isDarkMode ? Colors.white : Colors.grey[300],
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Mobile App Development Testing',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => changeTheme(ThemeMode.light),
                  child: const Text('Light Theme'),
                ),
                ElevatedButton(
                  onPressed: () => changeTheme(ThemeMode.dark),
                  child: const Text('Dark Theme'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
