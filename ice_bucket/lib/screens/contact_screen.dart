import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            'Contact Us',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Message'),
            maxLines: 4,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Submit'),
            onPressed: () {
              // Handle submit
            },
          ),
        ],
      ),
    );
  }
}
