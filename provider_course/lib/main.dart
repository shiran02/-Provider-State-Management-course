import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/home_screen.dart';
import 'package:provider_course/provider/count_provider.dart';
import 'package:provider_course/provider/example_one_provider.dart';
import 'package:provider_course/screens/count_example.dart';
import 'package:provider_course/screens/example_one.dart';
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
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ExampleOneScreen(),
      ),
    );
  }
}
