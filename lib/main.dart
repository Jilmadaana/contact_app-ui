import 'package:contactsapp/pages/Homeview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            elevation: 10,
            backgroundColor: Colors.amberAccent,
            unselectedIconTheme:
                IconThemeData(color: Colors.black, size: 20, opacity: 5.2),
            selectedIconTheme: IconThemeData(
              color: Colors.amber,
              size: 20,
            )),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          elevation: 10,
          shadowColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black45, size: 25),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: 15, color: Colors.grey),
        ),
        dividerTheme:
            const DividerThemeData(color: Colors.amberAccent, thickness: 1),
      ),
      darkTheme: ThemeData.dark().copyWith(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            elevation: 10,
            backgroundColor: Colors.black,
            unselectedIconTheme:
                IconThemeData(color: Colors.grey, size: 15, opacity: 5.2),
            selectedIconTheme: IconThemeData(
              color: Colors.red,
              size: 20,
            )),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          elevation: 10,
          shadowColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black45, size: 25),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: 15, color: Colors.white),
        ),
        dividerTheme: const DividerThemeData(color: Colors.black, thickness: 1),
      ),
      home: Contacts(),
    );
  }
}
