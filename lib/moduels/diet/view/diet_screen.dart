

import 'package:fitness_diet_app/moduels/diet/view/meals/add_meals.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/button.dart';
import '../widget/details_nutrition_intake_widget.dart';
import '../widget/nutration_intake_widget.dart';

class DietScreen extends StatefulWidget {
  const DietScreen({super.key});

  @override
  State<DietScreen> createState() => _DietScreenState();
}

class _DietScreenState extends State<DietScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.grey.shade200
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: Text("Add Daily Diet",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue
                  ),)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              const Row(
                children: [
                  Text("Today, ",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    color: Colors.blueAccent
                  ),),
                  Text("6 Nov 2025",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Nutrition Intake",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),),
              const SizedBox(
                height: 10,
              ),
              const NutrationIntakeSectionWidget(),
              const SizedBox(
                height: 30,
              ),

              const DetailsNutritionIntakeWidget(),
              const Text("Water Intake",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),),
              const SizedBox(
                height: 10,
              ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white, // Background color
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "3 of 6 glasses consumed",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.shade600,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "2.6",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                " ML / 5 ML",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        "lib/utils/assets/icons/glass-of-water.png",
                        height: 50,
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Images Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTapableImage("lib/utils/assets/icons/plastic-bottle.png", "500 ML"),
                      _buildTapableImage("lib/utils/assets/icons/plastic-bottle.png", "500 ML"),
                      _buildTapableImage("lib/utils/assets/icons/plastic-bottle.png", "500 ML"),
                      _buildTapableImage("lib/utils/assets/icons/plastic-bottle.png","500 ML"),
                      _buildTapableImage("lib/utils/assets/icons/plastic-bottle.png", "500 ML"),
                    ],
                  ),

                ],
              ),
            ),
          ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.orangeAccent.shade200, // Background color
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "3 of 6 glasses consumed",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Ketogenic Diet",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                            ],
                          ),
                          Image.asset(
                            "lib/utils/assets/icons/glass-of-water.png",
                            height: 50,
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      // Images Section
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Row(
                                 children: [
                                   Text(
                                    "856",
                                    style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                                             ),
                                   Text(
                                     "cal",
                                     style: TextStyle(
                                       fontSize: 16,
                                       fontWeight: FontWeight.normal,
                                       color: Colors.white,
                                     ),
                                   ),
                                 ],
                               ),
                               const Text(
                                 "CALORIES INTAKE",
                                 style: TextStyle(
                                   fontSize: 16,
                                   fontWeight: FontWeight.normal,
                                   color: Colors.white,
                                 ),
                               ),
                               const SizedBox(
                                 height: 10,
                               ),
                               SizedBox(
                                 width: MediaQuery.of(context).size.width*0.3,

                                   child: const LinearProgressIndicator(
                                 value: 0.22,
                                 minHeight: 8,// Example progress

                                 backgroundColor: Colors.white,
                                 valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                               )),

                             ],
                           ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    "2.5",
                                    style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "L",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                "WATER INTAKE",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width*0.3,

                                  child: const LinearProgressIndicator(
                                    value: 0.22,
                                    minHeight: 8,// Example progress

                                    backgroundColor: Colors.white,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                                  )),

                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
  Widget _buildTapableImage(String imagePath, String label) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // Handle tap
            print("Tapped on $label");
          },
          child: Image.asset(
            imagePath,
            height: 40,
            width: 40,
          ),
        ),
        const SizedBox(height: 4),
        if (label.isNotEmpty)
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade800,
            ),
          ),
      ],
    );
  }
}




