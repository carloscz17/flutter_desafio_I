import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final List<String> imgList = [
    'lib/assets/image_carrosel.png',
    'lib/assets/image_carrosel.png',
    'lib/assets/image_carrosel.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('lib/assets/profile.png'), 
                ),
                SizedBox(width: 10),
                Text(
                  'Olá, Joana',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.grey[300],
              height: 100,
              width: double.infinity,
              child: Center(child: Text('container fixo')),
            ),
            const SizedBox(height: 20),
            const Text(
              'Carrossel',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: imgList.map((item) {
                  return Container(
                    width: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Icon(Icons.play_circle_outline, color: Colors.white, size: 50),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ação do botão
              },
              child: const Text('CLIQUE PARA VER'),
            ),
          ],
        ),
      ),
    );
  }
}