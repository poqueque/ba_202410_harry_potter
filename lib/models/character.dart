class Character {
  final String name;
  final String imageUrl;
  final int strenght;
  final int magic;
  final int speed;
  int totalReviews = 0;
  int totalStars = 0;
  double get averageStars => (totalReviews == 0) ? 0 : totalStars/totalReviews;

  Character({
    required this.name,
    required this.imageUrl,
    required this.strenght,
    required this.magic,
    required this.speed,
  });
}

List<Character> characters = [
  Character(
    name: "Harry Potter",
    imageUrl:
        "https://static.wikia.nocookie.net/esharrypotter/images/8/8d/PromoHP7_Harry_Potter.jpg",
    strenght: 8,
    magic: 10,
    speed: 6,
  ),
  Character(
    name: "Hermione Granger",
    imageUrl:
        "https://static.wikia.nocookie.net/warnerbros/images/3/3e/Hermione.jpg/revision/latest/scale-to-width-down/1000?cb=20120729103114&path-prefix=es",
    strenght: 9,
    magic: 9,
    speed: 9,
  ),
  Character(
    name: "Ron Weasley",
    imageUrl:
        "https://static.wikia.nocookie.net/esharrypotter/images/6/69/P7_promo_Ron_Weasley.jpg/revision/latest/scale-to-width-down/1000?cb=20150523213430",
    strenght: 7,
    magic: 8,
    speed: 7,
  ),
];
