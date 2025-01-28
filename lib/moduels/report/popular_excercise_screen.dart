

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/single_excercise_screen.dart';

class PopularExcerciseScreen extends StatefulWidget {
  const PopularExcerciseScreen({super.key});

  @override
  State<PopularExcerciseScreen> createState() => _PopularExcerciseScreenState();
}

class _PopularExcerciseScreenState extends State<PopularExcerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Excercise"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 20,
                itemBuilder: (context,index){
            
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.19,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Total Body Yoga Deep Stretch",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(Icons.timelapse, color: Colors.grey),
                                      Text(
                                        "10:15",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(width: 10),
                                      Icon(Icons.local_fire_department, color: Colors.grey),
                                      Text(
                                        "390 kcl",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(const SingleExcerciseScreen());
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                      child: Material(
                                        elevation: 2,
                                        borderRadius: BorderRadius.circular(14),
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child: const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Play",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Icon(Icons.play_arrow),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Image.asset("lib/utils/assets/images/bkyouga.png"),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
          

        ],
      ),
    );
  }
}
