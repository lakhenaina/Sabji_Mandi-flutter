import 'package:flutter/material.dart';

class DashboardFoodCart extends StatelessWidget {
  const DashboardFoodCart({super.key,required this.imageUrl,required this.title});
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: SizedBox(
        width: 200,
        height: 200,
        child: Column(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                imageUrl,
                height: 100,
                width: 100,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
    }
  }
