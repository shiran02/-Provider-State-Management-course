import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider/theme_change_provider.dart';

class DarkScreen extends StatefulWidget {
  const DarkScreen({super.key});

  @override
  State<DarkScreen> createState() => _DarkScreenState();
}

class _DarkScreenState extends State<DarkScreen> {
  @override
  Widget build(BuildContext context) {

    final themeChanger = Provider.of<ThemeChanger>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscribe My Channel'),
      ),
      body: Column(
        children:[

          RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
            value: ThemeMode.light, 
            groupValue: themeChanger.themeMode, 
            onChanged: themeChanger.setTheme ,
            
          ),

          RadioListTile(
            title: Text('Dark Mode'),
            value: ThemeMode.dark, 
            groupValue: themeChanger.themeMode, 
            onChanged: themeChanger.setTheme 
          ),

          RadioListTile(
            title: Text('System Mode'),
            value: ThemeMode.system, 
            groupValue: themeChanger.themeMode, 
            onChanged: themeChanger.setTheme 
          ),

        ] ),
    );
  }
}