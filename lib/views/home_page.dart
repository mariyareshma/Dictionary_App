import 'package:flutter/material.dart';

import 'dictionary_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Dictionary',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ),
          Image.network(
            'https://cdn.dribbble.com/users/444644/screenshots/9514184/media/34791a82acfb860b66ed35897765ac06.gif',
            width: 500,
            height: 200,
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DictionaryWidget()),
              );
            },
            label: const Text(
              'Get Started',
              style: TextStyle(fontSize: 25, color: Colors.orange),
            ),
            icon: const Icon(
              Icons.start,
              color: Colors.orange,
            ),
          )
        ]),
      ),
    );
  }
}
