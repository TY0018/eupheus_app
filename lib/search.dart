import 'package:eupheus_app/sustainability.dart';
import 'package:flutter/material.dart';

const int itemCount = 20;
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection = Axis.vertical,
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index){
          ListTile(
            title: Text('Item ${(index + 1)}'),
            leading: const Icon(Icons.nature),
            onTap: (){
              debugPrint("enter topic widget");
          );
      };
    ),
  },
);
    
  }
}
