import 'package:flutter/material.dart';
import 'package:product_app/data.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:  Scaffold(
        appBar: AppBar(
          title: Text('Product App'),
        ),
    
        body:ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              child: Column(
                children: [
                  Image.network(productList[index].image),
                  Text(productList[index].title),
                  Text(productList[index].description),
                ],
              ),
    
            );
          },
    
        ),
      ),
    );
  }
}