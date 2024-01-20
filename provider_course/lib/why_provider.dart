import 'dart:async';

import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  const WhyProvider({super.key});

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {

  int count  = 0;

  @override
  void initState() {
    print('in init');
    // TODO: implement initState
    super.initState();

     print('before timer');

    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      print(count);
      setState(() {
        
     print('in set state');
      });
      
    });

    
     print('after timer');

    
  }

  @override
  Widget build(BuildContext context) {
    print('in build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Subscribe'),
      ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 

          Text(
                DateTime.now().hour.toString() +":"+DateTime.now().minute.toString()+":"+DateTime.now().second.toString(),
              style: TextStyle(
                fontSize: 30
              ),
          ),

          Center(
            child: Text(
                count.toString(),
              style: TextStyle(
                fontSize: 30
              ),
            ),
          )
        ],
      ),
    
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
          setState(() {
            
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}