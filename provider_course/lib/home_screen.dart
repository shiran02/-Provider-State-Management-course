import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

   int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Provider Tutorial'),
      ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          Center(
            child: Text(
                x.toString(),
              style: TextStyle(
                fontSize: 30
              ),
            ),
          )
        ],
      ),
    
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
        },
        ),
    );
  }
}