
import 'package:get/get.dart';

import '../models/burger_model.dart';

class HomeController extends GetxController {
  //Home Screen Controller

  bool isLiked = true;
  void like() {
    isLiked = !isLiked;
    update();
  }

  late Burger burger;

  List<String> burgerType = ["All", "Combos", "Sliders", "Class"];
  String selectedType = "All";
  final List<Burger> burgers = Burger.burgers;

  List<Burger> get filteredBurgers {
    if (selectedType == "All") {
      return burgers;
          
    }
    return burgers.where((burger) => burger.type == selectedType).toList();
    
  }

  void selectedTypeState(int index) {
    selectedType = burgerType[index];
    update();
  }

//Burger Details Controller

  int count = 1; // Initial count value

  void increment() {
    count++;
    update();
  }

  void decrement() {
    if (count > 1) count--;
    update();
  }

  //Custom burger Controller
  int countCustom = 1;

  void increcmentCustom() {
    countCustom++;
    update();
  }

  void decrecmentCustom() {
    if (countCustom > 1) countCustom--;
    update();
  }

  //payment controller 

  int selectedOption = 1;
  bool isChecked = false;

   void selectedPaymentOption(int? value) {
    if (value != null) {
      selectedOption = value;
      update(); 
    }
  }
   void isCheckedOption(bool? value) {
    if (value != null) {
      isChecked = value; 
      update(); 
    }
  }
  }


