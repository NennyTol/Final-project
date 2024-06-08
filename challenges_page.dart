import 'package:flutter/material.dart';

class ChallengesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sustainable Living Challenges'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Challenge 1: Use public transport for a week'),
          ),
          ListTile(
            title: Text('Challenge 2: Reduce plastic usage'),
          ),
          // Add more challenges here
        ],
      ),
    );
  }
}
