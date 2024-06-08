import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RecyclingCentersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recycling Centers'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('recycling_centers').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          var centers = snapshot.data!.docs;
          return ListView.builder(
            itemCount: centers.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(centers[index]['name']),
                subtitle: Text(centers[index]['address']),
              );
            },
          );
        },
      ),
    );
  }
}
