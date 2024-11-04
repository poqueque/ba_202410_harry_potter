import 'package:flutter/material.dart';
import 'package:harry_potter/models/character.dart';
import 'package:harry_potter/widgets/powers.dart';
import 'package:harry_potter/widgets/rating.dart';

class CharacterDetailScreen extends StatefulWidget {
  const CharacterDetailScreen({super.key, required this.character});

  final Character character;

  @override
  State<CharacterDetailScreen> createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreen> {
  int lastStarClicked = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.character.name),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context, widget.character.name);
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
              tag: widget.character.name,
              child: Image.network(
                widget.character.imageUrl,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Rating(value: widget.character.averageStars),
              ),
              Expanded(
                  child: Center(
                      child: Text("${widget.character.totalReviews} reviews")))
            ],
          ),
          Text(
            widget.character.name,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Rating(
            value: lastStarClicked.toDouble(),
            color: Colors.deepPurple,
            onStarClicked: (valueClicked) {
              lastStarClicked = valueClicked;
              widget.character.totalReviews++;
              widget.character.totalStars += valueClicked;
              setState(() {});
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Powers(
                icon: Icons.fitness_center,
                type: "Fuerza",
                value: widget.character.strenght,
              ),
              Powers(
                icon: Icons.auto_fix_high,
                type: "Magia",
                value: widget.character.magic,
              ),
              Powers(
                icon: Icons.speed,
                type: "Velocidad",
                value: widget.character.speed,
              ),
            ],
          )
        ],
      ),
    );
  }
}
