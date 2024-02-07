import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/home_screen.dart';
import 'package:provider_course/provider/auth_provider.dart';
import 'package:provider_course/provider/count_provider.dart';
import 'package:provider_course/provider/example_one_provider.dart';
import 'package:provider_course/provider/faviurite+provider.dart';
import 'package:provider_course/provider/theme_change_provider.dart';
import 'package:provider_course/screens/count_example.dart';
import 'package:provider_course/screens/dark_screen.dart';
import 'package:provider_course/screens/example_one.dart';
import 'package:provider_course/screens/favourite/favourite_screen.dart';
import 'package:provider_course/screens/login_screen.dart';
import 'package:provider_course/stateful_widget_screen.dart';
import 'package:provider_course/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

   
    print('build');

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>CountPRovider()),
        ChangeNotifierProvider(create: (_)=>ExampleOneProvider()),
        ChangeNotifierProvider(create: (_)=>FavouriteItemProvider()),
        ChangeNotifierProvider(create: (_)=>ThemeChanger()),
        ChangeNotifierProvider(create: (_)=>AuthProvider()),


        
      ],
      child: Builder(
        builder: (context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.blueAccent
              )
            ),

            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.blueGrey,
              primaryColor: Colors.amber,
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.teal
              )
            ),
            home: LoginScreen(),
          );
        },
      ),
    );
  }
}
