import 'package:flutter/material.dart';

class QueriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[

          Text(
            'Customer Support',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Question $index'),
                  subtitle: Text('Answer to question $index'),
                  isThreeLine: true,
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
