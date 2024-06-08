import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TransportRoutesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Public Transport & Eco-friendly Routes'),
      ),
      body: Center(
        child: Text('Integrate real-time transport data here'),
      ),
    );
  }
}
