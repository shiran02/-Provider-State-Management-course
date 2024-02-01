import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider/faviurite+provider.dart';
import 'package:provider_course/screens/favourite/my_favourite_screen.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    //  final favouriteProvider = Provider.of<FavouriteItemProvider>(context , listen: false);

    print('18 build');
    return Scaffold(

      appBar: AppBar(
        title: Text('Favourite App'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyFavouriteItemScreen(),));
            },
            child: Icon(Icons.favorite),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
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
