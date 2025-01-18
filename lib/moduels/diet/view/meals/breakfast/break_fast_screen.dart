import 'package:flutter/material.dart';

import 'widget/all_item_widget.dart';

class BreakFastScreen extends StatefulWidget {
  const BreakFastScreen({super.key});

  @override
  State<BreakFastScreen> createState() => _BreakFastScreenState();
}

class _BreakFastScreenState extends State<BreakFastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Breakfast Item"),
      ),
      body: const DefaultTabController(
        length: 6,
        child: Column(
          children: [
            TabBar(


              isScrollable: true,
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Salad'),
                Tab(text: 'Soup'),
                Tab(text: 'Meat'),
                Tab(text: 'Fish'),
                Tab(text: 'Others'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  AllItemWidget(),
                  Center(child: Text("Content for Tab 2")),
                  Center(child: Text("Content for Tab 3")),
                  Center(child: Text("Content for Tab 4")),
                  Center(child: Text("Content for Tab 5")),
                  Center(child: Text("Content for Tab 6")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


