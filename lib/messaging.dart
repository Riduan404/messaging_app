import 'package:flutter/material.dart';


class PeopleListScreen extends StatelessWidget {
  const PeopleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample list of people
    final List<Map<String, String>> people = [
      {'name': 'Alice', 'email': 'alice@example.com'},
      {'name': 'Bob', 'email': 'bob@example.com'},
      {'name': 'Charlie', 'email': 'charlie@example.com'},
      {'name': 'Diana', 'email': 'diana@example.com'},
      {'name': 'Eve', 'email': 'eve@example.com'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('People List'),
      ),
      body: Column(
        children: [
          // Icon section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.people, size: 50, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  'People Directory',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // People list
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                final person = people[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: Text(person['name']!),
                    subtitle: Text(person['email']!),
                    onTap: () {
                      // Navigate to another page or show details
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Clicked on ${person['name']}')),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
