import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CommunityEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Events'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('events').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          var events = snapshot.data!.docs;
          return ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(events[index]['name']),
                subtitle: Text(events[index]['date']),
                onTap: () {
                  // Handle event tap
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EventDetailPage(eventId: events[index].id)));
                },
              );
            },
          );
        },
      ),
    );
  }
}

class EventDetailPage extends StatelessWidget {
  final String eventId;

  EventDetailPage({required this.eventId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Details'),
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection('events').doc(eventId).get(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          var event = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name: ${event['name']}', style: TextStyle(fontSize: 24)),
                SizedBox(height: 16),
                Text('Date: ${event['date']}', style: TextStyle(fontSize: 18)),
                SizedBox(height: 16),
                Text('Description: ${event['description']}', style: TextStyle(fontSize: 18)),
                // Add more event details here
              ],
            ),
          );
        },
      ),
    );
  }
}
