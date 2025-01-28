
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleExcerciseScreen extends StatefulWidget {
  const SingleExcerciseScreen({super.key});

  @override
  State<SingleExcerciseScreen> createState() => _SingleExcerciseScreenState();
}

class _SingleExcerciseScreenState extends State<SingleExcerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Stack(
            children: [

              Image.asset("lib/utils/assets/images/yoga12.jpg"),
              Positioned(
                top: 30,
                  child: IconButton(
                      onPressed: (){
                        Get.back();

                      }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,))),
              Positioned(
                right: 20, top: 30,
                  child: IconButton(
                      onPressed: (){

                      }, icon: const Icon(Icons.more_horiz_outlined,color: Colors.white,))),
            ],
          ),
         const SizedBox(
           height: 10,
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text("Total Body Deep Stretch",style: TextStyle(
                 fontSize: 24,
                 fontWeight: FontWeight.bold
               ),),
             ],
                     ),
          )
          
        ],
      ),
    );
  }
}
