

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/button.dart';
import '../view/meals/add_meals.dart';

class DetailsNutritionIntakeWidget extends StatelessWidget {
  const DetailsNutritionIntakeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}