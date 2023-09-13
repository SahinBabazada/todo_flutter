import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/carousel_widget.dart';

// A Counter example implemented with riverpod

void main() {
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String username = "Darth Vader";

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text(
          "TODO",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.search, color: Colors.black)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://preview.redd.it/8sqzvsj05l491.jpg?width=640&crop=smart&auto=webp&s=9b5872bf876ac92cb03f5b632d762e029333fdff"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: Text(
              "Hello, $username.",
              style: const TextStyle(color: Colors.black, fontSize: 28),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "Looks like feel good",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              "You have 3 tasks to do today",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 40.0, right: 40.0, top: 60, bottom: 10),
            child: Text(
              "Today: 9.10.2023",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          const CarouselSliderWidget()
        ],
      ),
    );
  }
}
