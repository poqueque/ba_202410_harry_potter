import 'package:flutter/material.dart';
import 'package:harry_potter/widgets/powers.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: const Text("Harry Potter App"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 60,
                  ),
                  Text("Harry Potter")
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text("Starred"),
            ),
            const ListTile(
              leading: Icon(Icons.folder),
              title: Text("Files"),
            ),
            const ListTile(
              leading: Icon(Icons.upload),
              title: Text("Upload"),
            ),
            const ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Image.network(
              "https://static.wikia.nocookie.net/esharrypotter/images/8/8d/PromoHP7_Harry_Potter.jpg",
            ),
          ),
          const Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                  ],
                ),
              ),
              Expanded(child: Center(child: Text("89 reviews")))
            ],
          ),
          const Text(
            "Harry Potter",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Powers(
                icon: Icons.fitness_center,
                type: "Fuerza",
                value: 9,
              ),
              Powers(
                icon: Icons.auto_fix_high,
                type: "Magia",
                value: 10,
              ),
              Powers(
                icon: Icons.speed,
                type: "Velocidad",
                value: 8,
              ),
            ],
          )
        ],
      ),
    );
  }
}
