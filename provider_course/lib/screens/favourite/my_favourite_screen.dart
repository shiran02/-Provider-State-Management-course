

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider/faviurite+provider.dart';

class MyFavouriteItemScreen extends StatefulWidget {
  const MyFavouriteItemScreen({super.key});

  @override
  State<MyFavouriteItemScreen> createState() => _MyFavouriteItemScreenState();
}

class _MyFavouriteItemScreenState extends State<MyFavouriteItemScreen> {
  @override

  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteItemProvider>(context , listen: false);
   return Scaffold(

      appBar: AppBar(
        title: Text('Favourite'),
        
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favouriteProvider.listLength,
              itemBuilder: (context, index) {
                return Consumer<FavouriteItemProvider>(
                  builder: (context, value, child) {
                    return ListTile(
                      onTap: () {

                        print('Tap');

                        if(value.selectedItem.contains(index)){
                             value.remiveItems(index);
                        }else{
                           value.addItems(index);
                        }


                       
                      },
                      title: Text('Item ' + index.toString()),
                      trailing: Icon(!value.selectedItem.contains(index)
                          ? Icons.favorite_outline
                          : Icons.favorite),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}