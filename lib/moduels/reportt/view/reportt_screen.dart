
import 'package:flutter/material.dart';

import '../widget/cycling.dart';
import '../widget/excercise.dart';
import '../widget/heart_rate.dart';
import '../widget/sleep.dart';
import '../widget/walk.dart';

class ReporttScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            WalkWidget(),
            SleepWidget(),
            ExcerciseWidget(),
            HearRateWidget(),
            CaloriesWidget(),

            buildHealthCard('Heart Rate', '73 bpm', Icons.favorite, Colors.red),
            buildHealthCard('Steps', '7,235 Steps', Icons.directions_walk, Colors.purple),
            buildHealthCard('Sleep', '7.40 Hours', Icons.nightlight_round, Colors.orange),
            buildHealthCard('Exercise', '3 Hours', Icons.fitness_center, Colors.green),
            buildHealthCard('Cycling', '35 Minutes', Icons.pedal_bike, Colors.teal),
            buildHealthCard('Calories', '245 Kcal', Icons.local_fire_department, Colors.blue),
          ],
        ),
      ),
    );
  }

  Widget buildHealthCard(String title, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white), // Set icon color to white
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white), // Set text color to white
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, color: Colors.white), // Set value text color to white
          ),
        ],
      ),
    );
  }
}



