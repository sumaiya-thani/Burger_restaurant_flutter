import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:water_app/controller/home_controller.dart';

import '../utils/components/home_components.dart';

class Payment extends StatelessWidget {
  Payment({super.key});
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Order summary",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //order
                        PaymentText("Order"),
                        PaymentText("\$${16.48}"),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //taxes
                        PaymentText("Taxes"),
                        PaymentText("\$${0.3}"),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///fee
                        PaymentText("Delivery fees"),
                        PaymentText("\$${1.5}"),
                      ],
                    ),
                    Divider(
                      color: Colors.grey[400],
                      thickness: 2.0,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //total
                        Text(
                          "Total:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),

                        Text(
                          "\$${18.19}",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //eastmate delivery time

                        Text(
                          "Estimated delivery time:",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        Text(
                          "15-30 mins",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),

                        //eastmate delivery time
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Payment methods",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              const SizedBox(
                height: 12,
              ),
               GetBuilder<HomeController>(
  builder: (controller) {
    return CardUi(
      Color(0xA6000000),
      Colors.white,
      "https://s3-alpha-sig.figma.com/img/5c54/1a35/ce3e2b5e4f2c7277847e9b3e26d5ab78?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iXCwp1vacilCWllLC8Qtcj7FVmJvKJ27GvajbF3PklAJ95p0VTrLBi5GzmuYRNbxoXXKXw027BxqVD4L0d-s3DTloU9AxAD-FShBkrWBHtPsKEDjGQva16VaZ84SW1PUIX~g7o9GpR56yqPrxyqAxJHErWDP-yLoCRdNS1sPkn5qcs5G8UHRFogGw4fqaiPypXAbPm7YjAovaUJ~EjG0JE0mnig-ZMudJzvKoGGQyM-AKVhSTFYRFY7jwepp5XKdAMmLrtlS~wPiBAVV6Tjl4sHbmvMmSGLPvBo~06C8bpXJ87rsL2lLtZ~HVxKTWoHfluOSP13XLSorCG3wX7kLZg__",
      "Credit Card",
      "5105 **** **** 0505",
      1,
      _homeController.selectedOption,
      (int? value) {
        _homeController.selectedPaymentOption(value);
      },
    );
  },
),

              const SizedBox(
                height: 20,
              ),
              GetBuilder<HomeController>(
  builder: (controller) {
    return CardUi(
      Color(0xFFFFFFFF),
      Colors.black,
      "https://s3-alpha-sig.figma.com/img/bced/1e0a/a7f134cefdbc1d39de22675a36cbe3fd?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PT4jFYkF043e2ISqhbwC3MWa9T0YLQDh~mqYqrXWTSfO9Wo2y~RsS6MV2nFCWlQhGDOG4Hb6OgKp85eKqqFBe3oJ0Gwi6GU~IGZXRuLxOdirmtngXhQxmpabirQ4fTBZeY9Im2-cZSS90UF5KFoOHc7bdXD-G59Tw5uXLjUZlqHC9Ma-QJRrHmojVWSIv77VUSoxD-X4AiYMBLz1HjO9EUlBKWHBPtjqnBkbmM8FLzLbzRKpULCjuQtWVe4ATh4FqfCrjfvqwUv87qdD4C6BWW~cm0rhif0yIcwytb2Da1EXW8etE5m0ftlD6TqWOS~oorXPsfubpMcnfsbi88f9tw__",
      "Credit Card",
      "3566 **** **** 0505",
      2,
      _homeController.selectedOption,
      (int? value) {
        _homeController.selectedPaymentOption(value);
      },
    );
  },
),

              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GetBuilder<HomeController>(
                    builder: (context) {
                      return Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.red,
                        value: _homeController.isChecked,
                        onChanged: (bool? value) {
                          _homeController.isCheckedOption(value);
                        },
                      );
                    }
                  ),
                  PaymentText("Save card details for future payments"),
                ],
              ),
              const SizedBox(
                height: 130,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PaymentText("Total"),
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
                    "Pay Now", // Button text
                    Color(0xA6000000),
                    () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Success!',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Your payment was successful A receipt for this purchase has been sent to your email.',
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 20),
                                PrimaryButton(
                                  50, // Height
                                  160, // Width
                                  "Go Back", // Button text
                                  Colors.red,
                                  () {
                                    Get.back();
                                    // Navigator.of(context)
                                    //     .pop(); 
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
