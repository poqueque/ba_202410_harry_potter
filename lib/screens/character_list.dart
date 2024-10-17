import 'package:flutter/material.dart';
import 'package:harry_potter/models/character.dart';
import 'package:harry_potter/screens/character_detail.dart';

class CharacterList extends StatelessWidget {
  const CharacterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Hogwarts"),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ListView(
          children: [
            for (var character in characters)
              Padding(
                padding: const EdgeInsets.all(2),
                child: ListTile(
                  leading: Hero(
                    tag: character.name,
                    child: Image.network(character.imageUrl),
                    ),
                  title: Text(character.name),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () async {
                    var returnValue = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CharacterDetailScreen(character: character),
                      ),
                    );
                    print(returnValue);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
