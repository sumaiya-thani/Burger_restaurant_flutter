import 'package:get/get.dart';
import 'package:water_app/controller/home_controller.dart';
import 'package:water_app/models/burger_model.dart';
import 'package:water_app/view/bottomBar.dart';
import 'package:water_app/view/home.dart';
import 'package:water_app/view/payment.dart';

import '../../view/burger_detail.dart';
import '../../view/customBurger.dart';
import '../../view/splash_screen.dart';

List<GetPage> route = [
  GetPage(name: '/home', page: ()=> AnimatedBottomBar()),
  GetPage(name: '/splash', page: () => SplashScreen()),
  GetPage(name: '/burgerDetails', page: () => BurgerDetailScreen()),
  GetPage(name: '/customBurger', page: () => CustomBurger()),
   GetPage(name: '/payment', page: () => Payment()),
 
 
];
