import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pick your category"), actions: [IconButton(onPressed: (){}, icon: Icon(Icons.food_bank,size: 30,color: Colors.deepOrange),)],),
      body: GridView(
        padding: EdgeInsets.all(10),
        
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,childAspectRatio: 1,crossAxisSpacing: 10,mainAxisSpacing: 10
        ),
        children: [
              for (final category in availableCategories)
              
              CategoryGridItem(category: category)

        ],
      ),
    );
  }
}
