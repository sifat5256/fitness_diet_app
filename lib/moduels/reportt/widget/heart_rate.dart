

import 'package:flutter/material.dart';

class HearRateWidget extends StatelessWidget {
  const HearRateWidget({
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
                "Heart",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black), // Set text color to white
              ),
              Icon(Icons.favorite_rounded, size: 40, color: Colors.red),
            ],
          ),
          Image.asset("lib/utils/assets/icons/medical.png",height: 80,),
          SizedBox(height: 10,),
          Row(
            children: [

              Text("73 ",style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.red
              ),),
              Text("bpm",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent.shade700
              ),),
            ],
          )
          // Set icon color to white



        ],
      ),
    );
  }
}