

import 'package:fitness_diet_app/moduels/diet/view/meals/add_meals.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/button.dart';

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
                  color: Colors.grey.shade500
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: Text("Add Daily Diet",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
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
              Container(
               // height: 100,
               width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(16),
                 color: Colors.grey.shade200
               ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Consumed Today",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.blueGrey
                      ),),
                      Column(
                        children: [

                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("530 ",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green
                              ),),
                              Text("/ 2500 Cal",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey
                              ),),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(child: LinearProgressIndicator(
                            value: 0.22,
                            minHeight: 8,// Example progress

                            backgroundColor: Colors.white,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey.shade200
                  ),
                  //height: 300,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white
                                ),
                                height: 100,
                                width: 50,
                                child: const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 7),
                                      child: SizedBox(
                                        height:70,
                                        width: 70,

                                        child: CircularProgressIndicator(
                                          value: 0.72, // Example progress
                                          strokeWidth: 7,
                                          backgroundColor: Colors.grey,
                                          valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                         Text("Calories",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blueGrey
                                        ),),
                                         Text("856 cal",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blueAccent
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white
                                ),
                                height: 100,
                                width: 50,
                                child: const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 7),
                                      child: SizedBox(
                                        height:70,
                                        width: 70,

                                        child: CircularProgressIndicator(
                                          value: 0.28, // Example progress
                                          strokeWidth: 7,
                                          backgroundColor: Colors.greenAccent,
                                          valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Text("Calories",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey
                                        ),),
                                        Text("856 cal",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.green
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white
                                ),
                                height: 100,
                                width: 50,
                                child: const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 7),
                                      child: SizedBox(
                                        height:70,
                                        width: 70,

                                        child: CircularProgressIndicator(
                                          value: 0.42, // Example progress
                                          strokeWidth: 7,
                                          backgroundColor: Colors.orangeAccent,
                                          valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Text("Calories",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.deepOrangeAccent
                                        ),),
                                        Text("856 cal",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.orangeAccent
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white
                                ),
                                height: 100,
                                width: 50,
                                child: const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 7),
                                      child: SizedBox(
                                        height:70,
                                        width: 70,

                                        child: CircularProgressIndicator(
                                          value: 0.56, // Example progress
                                          strokeWidth: 7,
                                          backgroundColor: Colors.redAccent,
                                          valueColor: AlwaysStoppedAnimation<Color>(Colors.pinkAccent),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Text("Calories",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.pinkAccent
                                        ),),
                                        Text("856 cal",style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.redAccent
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        text: '+ Add Meals',
                        onTap: () {
                          Get.to(const AddMeals());
                        },),
                      const SizedBox(
                        height: 10,
                      ),


                    ],
                  ),
                ),
              ),
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
                          SizedBox(height: 4),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
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

                  SizedBox(height: 16),

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
        SizedBox(height: 4),
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
