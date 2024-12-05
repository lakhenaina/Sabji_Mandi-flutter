import 'package:flutter/material.dart';
import 'package:flutter_application_1/Modules/dashboard/lookingForWidget/looking_for_widget_page.dart';
import 'package:flutter_application_1/Modules/dashboard/promos/promos_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 246, 240),
         appBar: AppBar(
          leading: Icon(
            Icons.shopping_cart,
          ),
          title: Text(
            "Sabji Mandi Nepal",
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            actions: [
              IconButton(
                icon:const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: (){},
              )
            ],
         ),
         body: Padding(
          padding:  EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
         ),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LookingForWidgetPage(),
              const SizedBox(height: 10),
              PromosCard()
            ],
          )),
    );
  }
}