import 'package:fitness/model/movie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class MovieCardWidget extends StatelessWidget {
  final Movie movie;

  const MovieCardWidget({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(30.0),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            Expanded(
              child: buildImage(movie: movie),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              movie.movieName,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 4),
            buildGenres(movie: movie),
            const SizedBox(height: 4),
            buildRating(movie: movie),
            Text(
              '...',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            BuyButtonWidget(),
          ],
        ),
      ),
    );
  }
}

Widget buildImage({required Movie movie}) => Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: Image.asset(movie.imageUrl, fit: BoxFit.cover),
      ),
    );

Widget buildGenres({required Movie movie}) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: movie.genres
          .map((genre) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.grey),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    genre,
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                ),
              ))
          .toList(),
    );
Widget buildRating({required Movie movie}) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(movie.rating.toStringAsFixed(1)),
        ...List.generate(
            movie.stars,
            (index) => Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.orange,
                ))
      ],
    );
