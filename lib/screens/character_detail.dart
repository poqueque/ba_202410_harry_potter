import 'package:flutter/material.dart';
import 'package:harry_potter/models/character.dart';
import 'package:harry_potter/widgets/powers.dart';

class CharacterDetailScreen extends StatelessWidget {
  const CharacterDetailScreen({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context, character.name);
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.close),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Hero(
              tag: character.name,
              child: Image.network(
                character.imageUrl,
              ),
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
          Text(
            character.name,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Powers(
                icon: Icons.fitness_center,
                type: "Fuerza",
                value: character.strenght,
              ),
              Powers(
                icon: Icons.auto_fix_high,
                type: "Magia",
                value: character.magic,
              ),
              Powers(
                icon: Icons.speed,
                type: "Velocidad",
                value: character.speed,
              ),
            ],
          )
        ],
      ),
    );
  }
}
