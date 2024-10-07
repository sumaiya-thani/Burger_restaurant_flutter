import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:water_app/utils/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
       
      ),
      getPages: route,
     //initialRoute:'/product' ,
      initialRoute: '/splash' ,
     
    );
  }
}
