import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:water_app/controller/home_controller.dart';
import 'package:water_app/models/burger_model.dart';
import 'package:water_app/view/burger_detail.dart';

import '../utils/components/home_components.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final HomeController _homeController = Get.put(HomeController());

  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              //HEADER SECTION
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Foodgo"),
                      Text(
                        "order your fevorite food!",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    clipBehavior: Clip.antiAlias,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjl7xYqho8VFxvJSR9heh8UTerI6FW4KDbxA&s",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
//SEARCH SECTION
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //search textfield
                  Expanded(child: searchBox()),
                  SizedBox(width: 30),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16)),
                      child: IconButton(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.sliders),
                        color: Colors.white,
                      )),

                  //settings
                ],
              ),
              SizedBox(height: 30),
              GetBuilder<HomeController>(
                builder: (_) {
                  return Column(
                    children: [
                      Container(
                        height: 55,
                        width: double.infinity,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: _homeController.burgerType.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8),
                              child: ElevatedButton(
                                onPressed: () {
                                  _homeController.selectedTypeState(index);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: _homeController.selectedType ==
                                          _homeController.burgerType[index]
                                      ? Colors.red
                                      : Colors.grey[100],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: Text(
                                  _homeController.burgerType[index],
                                  style: TextStyle(
                                    color: _homeController.selectedType ==
                                            _homeController.burgerType[index]
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                }
              ),
              SizedBox(height: 30),
              // DISPLAY PRODUCTS BASED ON SELECTED BUTTON
              GetBuilder<HomeController>(
                builder: (context) {
                  return Expanded(
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 30,
                      childAspectRatio: 0.7,
                      children: _homeController.filteredBurgers.map((burger) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed("/burgerDetails",arguments: burger,);
                         
                            
                          },
                          child: product(
                            burger.name,
                            burger.subName,
                            burger.rate,
                            burger.image,
                          ),
                        );
                      }).toList(),
                    ),
                  );
                }
              ),
            
            
            ],
          ),
        ),
      ),
    );
  }
}
