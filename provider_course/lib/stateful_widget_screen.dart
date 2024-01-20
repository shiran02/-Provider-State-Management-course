import 'package:flutter/material.dart';

class StateFulWidget extends StatefulWidget {
  const StateFulWidget({super.key});

  @override
  State<StateFulWidget> createState() => _StateFulWidgetState();
}

class _StateFulWidgetState extends State<StateFulWidget> {

  int count  = 0;

  @override
  Widget build(BuildContext context) {
    print('in build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Provider Tutorial'),
      ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 

          Text(DateTime.now().toString()),
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