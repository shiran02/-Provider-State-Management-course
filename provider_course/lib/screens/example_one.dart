import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider/example_one_provider.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {
  double value = 1.0;
  @override
  Widget build(BuildContext context) {
   //final provider = Provider.of<ExampleOneProvider>(context, listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Subccribe'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(
            builder: (context, value, child) {
              return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);

                  // provider.setValue(val);

                  print(val);
                  setState(() {});
                },
              );
            },
          ),
          Consumer<ExampleOneProvider>(
            
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(value.value)),
                      child: const Center(
                          child: Text(
                        'COntainer 1',
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(value.value)),
                      child: const Center(
                          child: Text('COntainer 2',
                              style: TextStyle(fontSize: 20))),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
