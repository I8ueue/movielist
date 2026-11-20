
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Movie List'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 430,
            child: ListView(
              children: const [
                MovieItem('assets/m1.jfif', 'The Good, the Bad and the Ugly', 'Western', '8.8'),
                MovieItem('assets/m2.jfif', 'Good Will Hunting', 'Drama', '8.3'),
                MovieItem('assets/m3.jfif', 'The Odyssey', 'Adventure', '8.4'),
                MovieItem('assets/m4.jfif', 'Oppenheimer', 'Drama, History', '8.6'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MovieItem extends StatelessWidget {
  
  final String image;
  final String title;
  final String genre;
  final String rating;

  const MovieItem(this.image, this.title, this.genre, this.rating, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.all(3),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset(image, width: 65, height: 90, fit: BoxFit.cover),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(genre),
                  ],
                ),
              ),
              Text(rating),
            ],
          ),
        ),
      ),
    );
  }
}
