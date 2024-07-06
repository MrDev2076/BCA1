import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class CustomSearchBar extends StatefulWidget {
  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _controller = TextEditingController();
  List<String> suggestions = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grape',
    'Honeydew',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Background color of the app bar
        title: TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey), // Hint text color
          ),
          style: TextStyle(color: Colors.black), // Text color
          onChanged: (value) {
            setState(() {
              suggestions = getSuggestions(value);
            });
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.clear, color: Colors.black), // Icon color
            onPressed: () {
              setState(() {
                _controller.clear();
                suggestions = [];
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TypeAheadField<String>(
          textFieldConfiguration: TextFieldConfiguration(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Search here',
              border: OutlineInputBorder(),
            ),
            style: TextStyle(fontSize: 16.0),
          ),
          suggestionsCallback: (pattern) {
            return suggestions.where((item) =>
                item.toLowerCase().contains(pattern.toLowerCase()));
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text(suggestion),
              onTap: () {
                _controller.text = suggestion;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You selected: $suggestion')),
                );
              },
            );
          },
          onSuggestionSelected: (suggestion) {
            _controller.text = suggestion;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('You selected: $suggestion')),
            );
          },
        ),
      ),
    );
  }

  List<String> getSuggestions(String query) {
    if (query.isEmpty) {
      return [];
    }
    return suggestions.where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();
  }
}
