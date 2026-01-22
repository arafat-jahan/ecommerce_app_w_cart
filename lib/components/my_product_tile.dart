import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class MyProductTile extends StatelessWidget {
  final Product product;

  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 300, // Important for horizontal ListView
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          // Product image placeholder
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              child: const Icon(Icons.favorite, size: 70),
            ),
          ),



          // Product name
          Text(
            product.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 25,
            ),
          ),


          // Product description
          Text(
            product.description,
            style: TextStyle(
              fontSize: 12,
            ),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 10,),


          // Product price
          Text(
            "\$${product.price.toStringAsFixed(2)}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
