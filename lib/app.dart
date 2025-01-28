import 'package:fitness_diet_app/app_controller.dart';
import 'package:fitness_diet_app/moduels/diet/view/diet_screen.dart';

import 'package:fitness_diet_app/moduels/profile/view/profile_screen.dart';
import 'package:fitness_diet_app/moduels/report/view/report_screen.dart';
import 'package:fitness_diet_app/moduels/reportt/view/reportt_screen.dart';
import 'package:fitness_diet_app/utils/icon_path/icon_paths.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List<Widget> screens = [
    const MainHomeScreen(),
     DietScreen(),
    ReporttScreen(),
    const ProfileScreen(),

  ];
  final iconPaths = [
    AppIconPaths().homeIcon,
    AppIconPaths().dietIcon,
    AppIconPaths().reportIcon,
    AppIconPaths().profileIcon
  ];
  final titles = ["Home", "Diet", "Report", "Profile"];

  final AppController appController = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(Icons.notification_important_rounded,size: 24,color: Colors.blueAccent,),
          )
        ],
        leading:  Padding(
          padding: const EdgeInsets.only(left: 5),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset("lib/utils/assets/images/boy (1).png",height: 50,),
          ),
        ),
        title: const Row(
          children: [
            Text("GOOD DAY,  ",style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal
            ),),
            Text("Sifat",style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),),

          ],
        ),
      ),
      body: Obx(() {
        return screens[appController.selectedIndex.value];
      }),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(screens.length, (index) {
            return GestureDetector(
              onTap: () {
                appController.selectedTabIndex(index);
              },
              child: Obx(() {
                // Check if this tab is selected
                final isSelected = appController.selectedIndex.value == index;


                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      iconPaths[index],
                      height: 30,
                      color: isSelected ? Colors.blue : Colors.grey.shade500,
                    ),
                    Text(
                      titles[index],
                      style: TextStyle(
                        color: isSelected ? Colors.blueAccent : Colors.grey.shade500,
                      ),
                    ),
                  ],
                );
              }),
            );
          }),
        ),
      ),
    );
  }
}
