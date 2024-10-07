import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:water_app/utils/components/home_components.dart';
import 'package:water_app/models/burger_model.dart';
import 'package:water_app/view/customBurger.dart';

import '../controller/home_controller.dart';
//I change the final Burger = burger to Get.arguments
//we won't going to pass an argument in the route we just going to pass to the Navigation which was called go.Named

class BurgerDetailScreen extends StatelessWidget {
  final Burger burger = Get.arguments;

  BurgerDetailScreen({super.key});
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                burger.image,
                width: 400,
                height: 300,
              ),
              SizedBox(height: 16),
              Text(
                "${burger.name} ${burger.subName}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 6),
                  Text(burger.rate),
                  SizedBox(width: 16),
                  Text("${burger.prepareMinutes} minutes"),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(height: 16),
              Text(burger.description),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 150),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Portion",
                        textAlign: TextAlign.start,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CounterButton(
                            "-",
                            _homeController.decrement,
                          ),
                          SizedBox(width: 20),

                          //I use GetBuilder to leason to any update can be happen from home controller 
                          GetBuilder<HomeController>(
                            builder: (_homeController) {
                              return Text(
                                "${_homeController.count}",
                                style: TextStyle(fontSize: 18),
                              );
                            }
                          ),
                          SizedBox(width: 20),
                          CounterButton(
                            "+",
                            _homeController.increment,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                PrimaryButton(
                    50, // Height
                    100, // Width
                    "\$0.99", // Button text
                    Colors.red,
                    () {} // Button color
                    ),
                PrimaryButton(
                    50, // Height
                    200, // Width
                    "ORDER NOW", // Button text
                    Color(0xA6000000),
                   (){
                       Get.toNamed("/customBurger",arguments: burger,);
                   }
                    ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
