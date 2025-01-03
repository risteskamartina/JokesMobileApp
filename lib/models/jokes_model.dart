class Joke{
  final int id;
  final String setup;
  final String punchline;
  final String type;
  bool isFavorite;

  Joke ({required this.id, required this.setup, required this.punchline, required this.type, this.isFavorite = false,} );
  Joke.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        setup = data['setup'],
        type = data['type'],
        punchline = data['punchline'],
        isFavorite = data['isFavorite'] ?? false;

  Map<String, dynamic> toJson() => {'id' : id, 'setup' : setup, 'type' : type, 'punchline':punchline, 'isFavorite': isFavorite,};
}