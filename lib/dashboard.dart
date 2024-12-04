import 'package:flutter/material.dart';
import 'package:flutter_application_1/Modules/dashboard/lookingForWidget/looking_for_widget_page.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
         body: LookingForWidgetPage(),
    );
  }
}