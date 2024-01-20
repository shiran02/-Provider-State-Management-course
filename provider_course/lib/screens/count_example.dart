import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider/count_provider.dart';

class CountExapmle extends StatefulWidget {
  const CountExapmle({super.key});

  @override
  State<CountExapmle> createState() => _CountExapmleState();
}



class _CountExapmleState extends State<CountExapmle> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    final countProvider = Provider.of<CountPRovider>(context , listen:  false); 
    Timer.periodic(Duration(seconds: 1), (timer) {
        countProvider.setCount();
    });

  }

  @override
  Widget build(BuildContext context) {
    
    final countProvider = Provider.of<CountPRovider>(context , listen:  false); 
    print('in build  ${countProvider.count}');

    return Scaffold(
      appBar: AppBar(
        title: Text('Subscribe'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Consumer<CountPRovider>(builder: (context,value,child){
          print('build only Text widget');
          return Text(
          value.count.toString(),
          style: TextStyle(
            fontSize: 38
          ),
        );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );

  }
}