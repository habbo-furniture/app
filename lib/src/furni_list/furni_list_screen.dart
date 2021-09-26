import "package:flutter/material.dart";

class FurniListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Habbo.Furniture"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        children: [
          Container(
          padding: const EdgeInsets.all(10),
          child: const Text("Hello World!"),
          color: Colors.blue[400],
          ),
          Container(
          padding: const EdgeInsets.all(10),
          child: const Text("Hello World!"),
          color: Colors.green[200],
          ),
          Container(
          padding: const EdgeInsets.all(10),
          child: const Text("Hello World!"),
          color: Colors.blue[200],
          ),
          Container(
          padding: const EdgeInsets.all(10),
          child: const Text("Hello World!"),
          color: Colors.yellow[200],
          ),
          Container(
          padding: const EdgeInsets.all(10),
          child: const Text("Hello World!"),
          color: Colors.grey[400],
          ),
          Container(
          padding: const EdgeInsets.all(10),
          child: const Text("Hello World!"),
          color: Colors.blue[100],
          ),
          Container(
          padding: const EdgeInsets.all(10),
          child: const Text("Hello World!"),
          color: Colors.red[200],
          ),
        ],
      )
    );
  }
}
