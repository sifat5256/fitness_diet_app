

import 'package:flutter/material.dart';

class SleepWidget extends StatelessWidget {
  const SleepWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sleep",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black), // Set text color to white
              ),
              Icon(Icons.nightlight_rounded, size: 40, color: Colors.orange),
            ],
          ),
          Image.asset("lib/utils/assets/icons/bed.png",height: 80,),
          SizedBox(height: 10,),
          Row(
            children: [

              Text("7.40 ",style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen
              ),),
              Text("Hours",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
              ),),
            ],
          )
          // Set icon color to white



        ],
      ),
    );
  }
}