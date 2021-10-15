import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness/widget/background.dart';
import 'package:fitness/widget/movie_card.dart';
import 'package:flutter/material.dart';

import 'data/movies.dart';

class MyHomePage extends StatelessWidget {
  final controller = PageController();

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.close),
        actions: [Icon(Icons.person_outline), SizedBox(width: 15)],
      ),
      body: Stack(
        children: [
          BackgroundWidget(controller: controller),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CarouselSlider(
                  items: movies.map((e) => MovieCardWidget(movie: e)).toList(),
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    viewportFraction: 0.75,
                    height: MediaQuery.of(context).size.height * 0.7,
                    enlargeCenterPage: true,
                    onPageChanged: (index, _) => controller.animateToPage(index,
                        duration: Duration(milliseconds: 700),
                        curve: Curves.ease),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
