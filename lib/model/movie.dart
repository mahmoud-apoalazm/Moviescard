class Movie {
  late final String movieName;
  late final String imageUrl;
  late final int stars;
  late final List<String> genres;
  late final List<Actor> cast;
  late final double rating;
  late final String director;
  late final String description;

  Movie({
    required this.stars,
    required this.imageUrl,
    required this.movieName,
    required this.genres,
    required this.cast,
    required this.rating,
    required this.director,
    required this.description,
  });
}

class Actor {
  final String name;
  final String imageUrl;

  Actor({required this.name, required this.imageUrl});
}
