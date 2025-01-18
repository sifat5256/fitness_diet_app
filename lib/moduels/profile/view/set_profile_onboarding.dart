import 'package:fitness_diet_app/moduels/profile/view/separate_profile_set_screen/gender_screen.dart';
import 'package:fitness_diet_app/moduels/profile/view/separate_profile_set_screen/height_screen.dart';
import 'package:fitness_diet_app/moduels/profile/view/separate_profile_set_screen/weight_screen.dart';
import 'package:flutter/material.dart';

import 'set_profile/profile_set_screen.dart';

class SetProfileOnboarding extends StatefulWidget {
  const SetProfileOnboarding({super.key});

  @override
  State<SetProfileOnboarding> createState() => _SetProfileOnboardingState();
}

class _SetProfileOnboardingState extends State<SetProfileOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 4, // Number of tabs
          child: Column(
            children: [
              // Custom TabBar
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
                child: TabBar(


                  isScrollable: false,
                  // indicator: BoxDecoration(
                  //   color: Colors.purple,
                  //   borderRadius: BorderRadius.circular(2.0),
                  // ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.grey.shade400,
                  labelColor: Colors.purple,
                  tabs: [
                    Icon(Icons.height),
                    Icon(Icons.monitor_weight_outlined),
                    Icon(Icons.male_outlined),
                    Icon(Icons.fastfood),
                  ],
                  // tabs: List.generate(
                  //   6,
                  //       (index) => Tab(
                  //     child: Container(
                  //       height: 6,
                  //       decoration: BoxDecoration(
                  //         color: index == 0 ? Colors.purple : Colors.grey.shade300,
                  //         borderRadius: BorderRadius.circular(3),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                ),
              ),
              const SizedBox(height: 24),
              // TabBarView content
              Expanded(
                child: TabBarView(
                  children: [
                    // First tab content
                    HeightScreen(),
                    WeightScreen(),
                    GenderScreen(),
                    ProfileSetScreen()

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
