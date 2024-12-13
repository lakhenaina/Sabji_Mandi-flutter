import 'package:flutter/material.dart';
import 'package:flutter_application_1/Modules/dashboard/freshVegetable/fresh_vegetable.dart';
import 'package:flutter_application_1/Modules/dashboard/lookingForWidget/looking_for_widget_page.dart';
import 'package:flutter_application_1/Modules/dashboard/promos/promos_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 196, 244, 230),
         appBar: AppBar(
          leading: const Icon(
            Icons.shopping_cart,
          ),
          title: const Text(
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
         
         body: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
           padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               LookingForWidgetPage(),
               const SizedBox(height: 10),
               const PromosCard(),
               const Text(
                "Fresh Vegetables",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
               ),
               const SizedBox(height: 10),
                FreshVegetable(),
             ],
           ),
         ),
         bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: Container(
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
            ),
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.people,
                    color: Colors.white,
                  ),
                ),
                 IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.whatshot,
                    color: Colors.white,
                  ),
                 ),
              ],
            ),
          ),
         ),
    );
  }
}