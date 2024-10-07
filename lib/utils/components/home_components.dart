import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget searchBox() {
  return Container(
    height: 45,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 2,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: Icon(Icons.search),
        filled: true, // Ensure the background color is applied
        fillColor: Colors.white, // Background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
    ),
  );
}

Widget product(String name, String subName, String rate, String image) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
    child: Container(
      height: 380,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              // Allows the image to take more space
              child: Image.network(
                image,
                width: 120, // Increased width
                height: 300, // Increased height
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      subName,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                SizedBox(width: 5),
                Text(rate),
                SizedBox(width: 44),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.heart),
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget PrimaryButton(double bHeight, double bWidth, String text, Color color,
    VoidCallback? onPressed) {
  return SizedBox(
    width: bWidth, // Set the width
    height: bHeight, // Set the height
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      child: Text(
        // "\$0.99",
        text,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget CounterButton(
  String text,
  VoidCallback onPressed,
) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
      ),
    ),
    child: Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: 18), 
    ),
  );
}

Widget BurgerDetail(String nameText, String image) {
  return Stack(
    children: [
      Container(
        height: 100,
        width: 95,
        decoration: BoxDecoration(
            color: Color(0xFF432F2F),
             borderRadius: BorderRadius.circular(16),
              boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 5),
          ),
        ],
             
             ),
      ),
      Container(
        height: 60,
        width: 95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
    
        ),
        child: Image.network(image),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 70, right: 8, left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              nameText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),

            SizedBox(width: 13), //button +
            SizedBox(
              width: 20,
              height: 20,
              child: FloatingActionButton(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 15,
                  ),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    ],
  );
}

///Payment Screen
Widget PaymentText(String text) {
  return Text(
    text,
    style: TextStyle(color: Colors.grey[800]),
  );
}

Widget CardUi(
  Color containerColor,
  Color textColor,
  String image,
  String cardName,
  String cardNumber,
  int value,
  int groupValue,
  Function(int?) onChanged,
) {
  return Container(
    height: 80,
    width: 392,
    decoration: BoxDecoration(
      color: containerColor,
      borderRadius: BorderRadius.circular(20),
     

    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Image.network(
            image,
            width: 70,
            height: 43,
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardName,
                style: TextStyle(fontSize: 14, color: textColor),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                cardNumber,
                style: TextStyle(fontSize: 14, color: textColor),
              ),
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Radio(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: Colors.white,
          ),
        ],
      ),
    ),
  );
}

//User profile Components

Widget TextEdit(String text , ) {
  return TextFormField(
    decoration: InputDecoration(
      labelText:text,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16), // Border radius 16
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(16), // Border radius 16 when enabled
        borderSide: BorderSide(
          color: Colors.grey, // Default border color
          width: 1.0,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(16), // Border radius 16 when focused
        borderSide: BorderSide(
          color: Colors.grey, // Border color when focused
          width: 2.0,
        ),
      ),
    ),
  );
}
