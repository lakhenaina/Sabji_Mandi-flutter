import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/dashboard_food_cart.dart';

class LookingForWidgetPage extends StatelessWidget {
   LookingForWidgetPage({super.key});
  var dataArray= [
    {
      "url":"https://media.istockphoto.com/id/171579643/photo/tomato-greenhouse.jpg?s=1024x1024&w=is&k=20&c=kFi-7YRjDfBTcPgSkCdppZVznCUHEfrU_mvjZii5UhI=",
      "title":"Tomato"
    },
    {
      "url":"https://media.istockphoto.com/id/692951090/photo/organic-potatoes-on-rustic-background.webp?a=1&b=1&s=612x612&w=0&k=20&c=5wy5PVTtYCu0gtTOIM28NVlG27NeT-A0d09FXamzlWs=",
      "title":"Potato"
    },
    {
      "url":"https://media.istockphoto.com/id/1371203923/photo/close-up-of-cauliflower-on-table.webp?a=1&b=1&s=612x612&w=0&k=20&c=DN5buiVXEuXZAmyZ_XI4LjQmecseMbqQtqfNC_Qx8q0=",
      "title":"Cauliflower"
    },
    {
      "url":"https://media.istockphoto.com/id/526490997/photo/fresh-carrots-on-black-background.webp?a=1&b=1&s=612x612&w=0&k=20&c=OkK6msbWElWVDLruo64esLifA16n4-d7xCnpJoeOvf8=",
      "title":"Carrot"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "What are you looking for?",
          style: TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx,index){
              final data = dataArray[index];
              return DashboardFoodCart(
                imageUrl: data ['url'] ?? "",
                title: data['title']?? "N/A",
              );
            },
            itemCount: 4,
          ),
        )
      ],
    );
  }
}