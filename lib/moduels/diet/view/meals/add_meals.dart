import 'package:fitness_diet_app/moduels/diet/view/meals/breakfast/break_fast_screen.dart';
import 'package:fitness_diet_app/moduels/diet/view/meals/breakfast/brreak_fast_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddMeals extends StatefulWidget {
  const AddMeals({super.key});

  @override
  State<AddMeals> createState() => _AddMealsState();
}

class _AddMealsState extends State<AddMeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Meals"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  "Today, ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueAccent,
                  ),
                ),
                Text(
                  "6 Nov 2025",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Breakfast",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Recommended 830-1130 cal",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 3,
                              backgroundColor: Colors.blueAccent,
                            ),
                            onPressed: () {
                              Get.to(const BreakFastScreen());
                            },
                            child: const Text(
                              "+ Add food",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Positioned image
                    Positioned(
                      top: 0,
                      right: 10,
                      bottom: 10,
                      child: Image.asset(
                        'lib/utils/assets/diet_images/bkfast1.png',
                        width: 140,
                        height: 140,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                           children: [
                             const SizedBox(
                               width: 150,
                             ),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 const Text(
                                   "Lunch",
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20,
                                     color: Colors.black,
                                   ),
                                 ),
                                 const SizedBox(height: 5),
                                 const Text(
                                   "Recommended 830-1130 cal",
                                   style: TextStyle(
                                     fontWeight: FontWeight.normal,
                                     fontSize: 14,
                                     color: Colors.grey,
                                   ),
                                 ),
                                 const SizedBox(height: 10),
                                 ElevatedButton(
                                   style: ElevatedButton.styleFrom(
                                     elevation: 3,
                                     backgroundColor: Colors.blueAccent,
                                   ),
                                   onPressed: () {},
                                   child: const Text(
                                     "+ Add food",
                                     style: TextStyle(
                                       fontSize: 16,
                                       color: Colors.white,
                                       fontWeight: FontWeight.bold,
                                     ),
                                   ),
                                 ),
                               ],
                             )
                           ],
                         )
                        ],
                      ),
                    ),
                    // Positioned image
                    Positioned(
                      top: 0,
                      left: 10,
                      bottom: 10,
                      child: Image.asset(
                        'lib/utils/assets/diet_images/lunch1.png',
                        width: 140,
                        height: 140,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Snaks",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Recommended 830-1130 cal",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 3,
                              backgroundColor: Colors.blueAccent,
                            ),
                            onPressed: () {},
                            child: const Text(
                              "+ Add food",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Positioned image
                    Positioned(
                      top: 0,
                      right: 10,
                      bottom: 10,
                      child: Image.asset(
                        'lib/utils/assets/diet_images/fastfood1.png',
                        width: 140,
                        height: 140,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 150,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Dinner",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    "Recommended 830-1130 cal",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 3,
                                      backgroundColor: Colors.blueAccent,
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "+ Add food",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    // Positioned image
                    Positioned(
                      top: 0,
                      left: 10,
                      bottom: 10,
                      child: Image.asset(
                        'lib/utils/assets/diet_images/dinner1.png',
                        width: 140,
                        height: 140,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
