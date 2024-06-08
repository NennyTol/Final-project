import 'package:flutter/material.dart';
import 'pages/green_spaces_page.dart';
import 'pages/transport_routes_page.dart';
import 'pages/recycling_centers_page.dart';
import 'pages/community_events_page.dart';
import 'pages/energy_tips_page.dart';
import 'pages/air_quality_page.dart';
import 'pages/challenges_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sustainable City Guide'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Green Spaces Locator'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GreenSpacesPage()));
            },
          ),
          ListTile(
            title: Text('Public Transport & Eco-friendly Routes'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TransportRoutesPage()));
            },
          ),
          ListTile(
            title: Text('Recycling & Waste Management'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RecyclingCentersPage()));
            },
          ),
          ListTile(
            title: Text('Community Events & Volunteering'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CommunityEventsPage()));
            },
          ),
          ListTile(
            title: Text('Energy Conservation Tips'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EnergyTipsPage()));
            },
          ),
          ListTile(
            title: Text('Air Quality & Environmental Alerts'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AirQualityPage()));
            },
          ),
          ListTile(
            title: Text('Sustainable Living Challenges'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChallengesPage()));
            },
          ),
        ],
      ),
    );
  }
}
