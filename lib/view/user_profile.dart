import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/components/home_components.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red, 
      appBar: AppBar(
        backgroundColor: Colors.red, 
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
            ),
          ),
   
          Positioned(
            top: 0,
            left: MediaQuery.of(context).size.width / 2 - 60, // Center the image
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 3), // Red border
                borderRadius: BorderRadius.circular(16), // Border radius
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16), // Image border radius
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjl7xYqho8VFxvJSR9heh8UTerI6FW4KDbxA&s",
                  fit: BoxFit.cover,
                  height: 120,
                  width: 120,
                ),
              ),
            ),
          ),
          Positioned(
            top: -120,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 250), 
                  TextEdit("Name"),
                  SizedBox(height: 12),
                  TextEdit("Email"),
                  SizedBox(height: 12),
                  TextEdit("Delivery address"),
                  SizedBox(height: 12),
                  TextEdit("Password"),
                  SizedBox(height: 20),
                  Divider(
                    color: Colors.grey[400],
                    thickness: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PaymentText("Payment Details"),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.navigate_next))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PaymentText("Order history"),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.navigate_next))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PrimaryButton(
                          50, // Height
                          160, // Width
                          "Edit Profile ", // Button text
                          Color(0xA6000000), // Button color
                          () {}),
                      PrimaryButton(
                          50, // Height
                          160, // Width
                          "Log out", // Button text
                          Colors.red, // Button color
                          () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}