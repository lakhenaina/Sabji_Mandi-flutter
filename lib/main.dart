import 'package:flutter/material.dart';
import 'package:flutter_application_1/Modules/product/product_details.dart';
import 'package:flutter_application_1/dashboard.dart';

void main(){
  return runApp(Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //initial routes
        "/":(ctx) {
          return Dashboard();
        },
        "/product/details":(ctx) {
          return ProductDetails();
        }
      },
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: false,
      ),
      initialRoute: "/",
    );
  }
}