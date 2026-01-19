import 'package:ecommerce_app/components/my_button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.background ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag,size: 72,color: Theme.of(context).colorScheme.inversePrimary,),
            
            //logo
            SizedBox(height: 20,),



            //title
            Text("Minimal shop", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

            SizedBox(height: 20,),


            //subtitle
          Text("Premium Quality Products", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),

            //button
            MyButton(onTap: () => Navigator.pushNamed(context, '/shop_page'), child: Icon(Icons.arrow_forward))



          ],
        ),
      ),

    );
  }
}
