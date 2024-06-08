import 'package:flutter/material.dart';

class EnergyTipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Energy Conservation Tips'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Turn off lights when not in use'),
          ),
          ListTile(
            title: Text('Use energy-efficient appliances'),
          ),
          // Add more tips here
        ],
      ),
    );
  }
}
