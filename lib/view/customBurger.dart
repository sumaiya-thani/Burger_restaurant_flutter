import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:water_app/utils/components/home_components.dart';
import 'package:water_app/controller/home_controller.dart';
import 'package:water_app/models/burger_model.dart';
import 'package:water_app/view/payment.dart';

class CustomBurger extends StatelessWidget {
  final Burger burger = Get.arguments;
  CustomBurger({super.key});
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/723a/0158/e1c46a9ba88ccbb576736c5f6554d691?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=g3-4Im0Dd3d7OCCenrgdvzpbD0dIis6OeFb1NxxwHZE0TzsR~B15aOMWEMrq0ZCRaISyGGzSyBEEi7AmtnAT46h1QV2GtjEQfGXsk8GpD-Habx2bJram-2ABZoXA9Z9rArkiO1mF1pIj6JzAYHW5ztOnp95hFRjJQ71X7qjQxMYCYDf9d1YsOG~d7QQV5jWWQC3R9WONxEuwuVM90uF7OzVDpDV4k-4-5xY2y56Oh22gKUtmpSTEAuUmSOa3pNye61LBQYVJJ-GHW9fELWhNmgKD0oIR~JLzYEZ51i2GHIY8rIdNTHWPvy-nRFN6alPK1JrG06YEe0xlQyrVCobtQg__",
                      height: 300,
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Customize",
                                style: TextStyle(
                                  fontWeight:
                                      FontWeight.w800, 
                                  color: Colors.black, 
                                  fontSize:
                                      16, 
                                ),
                              ),
                              TextSpan(
                                text:
                                    " your Burger\nto Your Testes.Ultimate\nExperience",
                                style: TextStyle(
                                  fontWeight: FontWeight
                                      .normal, 
                                  color: Colors
                                      .black, 
                                  fontSize: 16, 
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 100),
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
                                  _homeController.decrecmentCustom,
                                ),
                                SizedBox(width: 20),
                                GetBuilder<HomeController>(
                            builder: (_homeController) {
                              return Text(
                                "${_homeController.countCustom}",
                                style: TextStyle(fontSize: 18),
                              );
                            }
                          ),
                                SizedBox(width: 20),
                                CounterButton(
                                  "+",
                                  _homeController.increcmentCustom,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //image

                  //counter
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Text("Toppings",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: burger.toppings.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: BurgerDetail(
                       burger.toppings[index],
                        burger.toppingsImages[index],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Text(
                    "Side options",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: burger.sideOptions.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: BurgerDetail(
                       burger.sideOptions[index],
                        burger.sideOptionsImages[index],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 44),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Total",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$ ",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                            TextSpan(
                              text: "16.49",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  PrimaryButton(
                      50, // Height
                      160, // Width
                      "ORDER NOW", // Button text
                      Colors.red,
                      (){
                         Get.toNamed("/payment");
                      }
                      ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
