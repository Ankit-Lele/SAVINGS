import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Gsearch extends StatefulWidget {
  const Gsearch({super.key});

  @override
  State<Gsearch> createState() => _GsearchState();
}

class _GsearchState extends State<Gsearch> {
  final TextEditingController _controller = TextEditingController();
  List _results = [];
  List _suggestions = [];

  Future<void> _search(String query) async {
    final String apiKey = 'AIzaSyCugUCm2Edgk2Nn1535ttQ5dVtlK7VsKic'; // Replace with your API key
    final String searchEngineId = '762e59150a5934e12'; // Replace with your Search Engine ID

    final response = await http.get(Uri.parse(
        'https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$searchEngineId&q=$query'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      setState(() {
        _results = data['items'] ?? [];
        _suggestions.clear();
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ResultsPage(results: _results)),
      );
    } else {
      throw Exception('Failed to load search results');
    }
  }

  void _getSuggestions(String input) {
    // Example logic for suggestions (can be replaced with real data)
    setState(() {
      _suggestions = [
        {'title': 'Suggestion 1'},
        {'title': 'Suggestion 2'},
        {'title': 'Suggestion 3'},
      ].where((s) => s['title']!.toLowerCase().contains(input.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 150,
          leading: TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "SAVINGS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle_rounded),
              tooltip: 'Show Profile',
              onPressed: () {},
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      _search(_controller.text);
                    },
                  ),
                ),
                onChanged: (value) {
                  _getSuggestions(value);
                },
                onSubmitted: (value) {
                  _search(value);
                },
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _suggestions.length,
                  itemBuilder: (context, index) {
                    final suggestion = _suggestions[index];
                    return ListTile(
                      title: Text(suggestion['title']!),
                      onTap: () {
                        _controller.text = suggestion['title']!;
                        _search(_controller.text);
                      },
                    );
                  },
                ),
              ),
              Expanded(
                child: GridView.count(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  crossAxisSpacing: 100,
                  mainAxisSpacing: 30,
                  crossAxisCount: 3,
                  childAspectRatio: 1.22,
                  children: [
                    _buildGridButton("What's trending?"),
                    _buildGridButton("Personalised Discounts"),
                    _buildGridButton("Surprise me!!"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridButton(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(colors: [
          Colors.deepPurple,
          Colors.purple,
          Colors.deepPurpleAccent,
        ]),
      ),
      child: TextButton(
        onPressed: () => Navigator.pop(context),
        style: buttonStyle(),
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: 'Playwrite', fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }
ButtonStyle buttonStyle(){
  return ButtonStyle(
  overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
  
// buttons with purple themed gradient background
  alignment: Alignment.center,
  animationDuration: const Duration(milliseconds: 200),
  backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
  foregroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 253, 253, 253)),
  shape: WidgetStateProperty.all<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: const BorderSide(color: Colors.deepPurple),
    ),
  ),
  elevation: WidgetStateProperty.all<double>(14),
  fixedSize: WidgetStateProperty.all<Size>(const Size(235, 541)),
  minimumSize: WidgetStateProperty.all<Size>(const Size(235, 541)),
);  //add a button height and width property for 235 and 541 respectively
  
  }
}

class ResultsPage extends StatelessWidget {
  final List results;

  ResultsPage({required this.results});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Results')),
      body: ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          final item = results[index];
          return ListTile(
            title: Text(item['title']),
            subtitle: Text(item['snippet']),
            onTap: () {
              final url = item['link'];
              // Use a package like url_launcher to open the link
              // launch(url);
            },
          );
        },
      ),
    );
  }
}
